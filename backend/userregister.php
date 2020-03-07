<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$mobile=trim($decoded['mobile']);
	$name=trim($decoded['name']);
	$email=trim($decoded['email']);
	$password=trim($decoded['password']);
	$promocode=trim($decoded['promocode']);

	$returnValue=array("status"=>"fail");
	$role="user";
	$status="use";
	$avatar="image/profile/default.jpg";
	$temp=new dateTime();
	$expiredate=$temp->format('Y-m-d H:i:s');
	

	$sql = "SELECT * FROM anas_user WHERE mobile='$mobile'";
	$result = mysql_query($sql,$conn);
	if($result){
		if(mysql_num_rows($result)>0){
			$returnValue['status']="existmobile";
		}
		else{
			//----promo code-------

			$sql = "SELECT * FROM `anas_setting` WHERE 1 limit 1";
			$result = mysql_query($sql,$conn);
			$row = mysql_fetch_array($result);
			$promo_get=$row['userinvite'];
			$promo_gift=$row['clientinvite'];
				
			$wallet_friend=0;
		
			if(strlen($promocode)>7){
				$sql = "SELECT * FROM anas_user WHERE promocode='$promocode' limit 1";
				$result = mysql_query($sql,$conn);		
				if($result && mysql_num_rows($result)>0){

					$row=mysql_fetch_object($result);
					$userid=$row->id;
		
					$wallet_friend=$promo_gift;
					
					$sql = "SELECT `wallet` FROM `anas_user` WHERE id=$userid limit 1";
					$result = mysql_query($sql,$conn);
					$value = mysql_fetch_object($result);
					$wallet_inviter=$value->wallet;
				
					$wallet_inviter=$wallet_inviter+$promo_get;
					$promocode = mt_rand(10000000, 99999999);
		
					$sql="UPDATE `anas_user` SET `promocode`='$promocode', wallet=$wallet_inviter WHERE id=$userid";
					$result = mysql_query($sql,$conn);
					//add history
					$paydate=new dateTime();
					$paydate=$paydate->format('Y-m-d H:i:s');
					$sql = "INSERT INTO `anas_billing`(`userid`, `paydate`, `transaction`, `amount`, `type`) VALUES ($userid,'$paydate','Invite friend',$promo_get,'income')";
					$result = mysql_query($sql,$conn);

					$returnValue['invitestatus']='ok';
				}
				else{
					$returnValue['invitestatus']='wrongcode';
				}
			}
			//--------promo code end---
			$promocode = mt_rand(10000000, 99999999);
			$sql = "INSERT INTO anas_user (name,email,mobile,password,role,avatar,status,expiredate,promocode,wallet,language) 
			VALUES ('$name','$email','$mobile','$password','$role','$avatar','$status','$expiredate','$promocode',$wallet_friend,'عربى')";
			$result = mysql_query($sql,$conn);
			if($result){
				$returnValue['status']="ok";

				if($wallet_friend>0){	//add new user history
					$sql = "SELECT `id` FROM `anas_user` WHERE mobile=$mobile limit 1";
					$result = mysql_query($sql,$conn);
					$value = mysql_fetch_object($result);
					$userid=$value->id;

					$sql = "INSERT INTO `anas_billing`(`userid`, `paydate`, `transaction`, `amount`, `type`) VALUES ($userid,'$paydate','Gift from Invite',$promo_gift,'income')";
					$result = mysql_query($sql,$conn);
				}
			}
			else{
				$returnValue['status']="fail";
			}
		}
	}

	echo json_encode($returnValue);
?>