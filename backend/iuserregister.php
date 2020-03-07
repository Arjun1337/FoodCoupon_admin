<?php
	include("dbcon.inc");

	$username=trim($_POST['username']);
	$password=trim($_POST['password']);	
	$mobile=trim($_POST['mobile']);
	$checkpromo = trim(strtolower($_POST['promocode']));
	$role="user";
	$status="free";
	$avatar = "image/profile/default.jpg";
	$nowTime=new DateTime();	
	$expiredate = $nowTime->format("Y-m-d");
	$language = "English";
	$promocode =rand(10000000, 99999999);
	$wallet = 0;
	$walletreason = "Invite Friends";
	$wallethis = 10;
	$yesterday = date('Y-m-d',strtotime("-1 days"));

	$checkpromosql = "SELECT * FROM anas_user WHERE promocode='".$checkpromo."'";	
	$checkresult = mysql_query($checkpromosql,$conn);

		

	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	$result = mysql_query($sql,$conn);
	$response=array();
	

	if($result){
		if( mysql_num_rows($result)>0){
			$response['status']="existuser";
		}
		else
		{	
			if ($checkresult) {
				if( mysql_num_rows($checkresult)>0){

					$row = mysql_fetch_array($checkresult);
					$wallet_val = $row['wallet'] + $wallethis;
					$user_id = $row['id'];
					$wallet = $wallethis;

					$promocodef = rand(10000000, 99999999);
					$hissql = "INSERT INTO anas_billing(userid, paydate,transaction,amount,type) VALUES ('$user_id','$expiredate','$walletreason','$wallethis','income')";
					
					mysql_query($hissql,$conn);
					$updatepromosql = "UPDATE anas_user SET promocode='$promocodef', wallet = '$wallet_val' WHERE promocode='$checkpromo'";
					mysql_query($updatepromosql,$conn);

					$sql = "INSERT INTO anas_user (name, password, mobile, role, avatar, status, startdate,expiredate,language,promocode,wallet) VALUES ('$username','$password','$mobile','$role','$avatar','$status','$expiredate','$yesterday','$language','$promocode','$wallet')";
					$result = mysql_query($sql,$conn);
					if($result){
						$lastinsert =mysql_insert_id();
						$hissql = "INSERT INTO anas_billing(userid, paydate,transaction,amount,type) VALUES ('$lastinsert','$expiredate','$walletreason','$wallethis','income')";
						mysql_query($hissql,$conn);
						$response['status']="ok";
					}
					else{
						$response['status']="fail";
					}
				}
				else{
					$sql = "INSERT INTO anas_user (name, password, mobile, role, avatar, status, startdate,expiredate,language,promocode,wallet) VALUES ('$username','$password','$mobile','$role','$avatar','$status','$expiredate','$yesterday','$language','$promocode','$wallet')";
					$result = mysql_query($sql,$conn);
					if($result){
						$response['status']="ok";
					}
					else{
						$response['status']="fail";
					}
				}
			}
		}
	}		

	echo json_encode($response);
?>