<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$mobile=trim($decoded['mobile']);
	$pass=trim($decoded['password']);
	$deviceid=trim($decoded['deviceid']);
	
	//add session
	$sql = "UPDATE `anas_user` SET `session`='$deviceid' WHERE mobile='$mobile'";
	$result = mysql_query($sql,$conn);

	
	$returnValue=array("status"=>"fail");

	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	$result = mysql_query($sql,$conn);
	if($result){
		if (mysql_num_rows($result)>0) {
			// output data of each row
			$row = mysql_fetch_array($result);
			if($row["password"]==$pass){
				$returnValue["status"]= "ok";
//user data read							
				$temp=array();
				$userid=$row["id"];
				$temp["id"]=$row["id"];
				$temp["name"]=$row["name"];
				$temp["email"]=$row["email"];
				$temp["password"]=$row["password"];
				$temp["mobile"]=$row["mobile"];
				$temp["avatar"]=$row["avatar"];
				$temp["language"]=$row["language"];
				$temp["role"]=$row["role"];
				$temp["startdate"]=$row["startdate"];
				$today=new dateTime();
				$expiredate=new dateTime($row["expiredate"]);
				$temp["expiredate"]=($today>$expiredate)?"free":$expiredate->format('Y-m-d');
				$temp["promocode"]=$row["promocode"];	
				$temp["wallet"]=$row["wallet"];
				$returnValue['user']=$temp;

				$coupons=array();
				$foodids=array();
				$favorites=array();
				if($today<$expiredate){
					$sql = "SELECT id,foodid FROM anas_coupon WHERE userid='$userid'";
					$result = mysql_query($sql,$conn);
					if($result && mysql_num_rows($result)>0){
						while($row = mysql_fetch_array($result)){
							array_push($coupons,$row['id']);
							array_push($foodids,$row['foodid']);
						}
					}
				}
				$sql = "SELECT foodid FROM anas_favorite WHERE userid='$userid'";
				$result = mysql_query($sql,$conn);
				if($result && mysql_num_rows($result)>0){
					while($row = mysql_fetch_array($result)){
						array_push($favorites,$row['foodid']);
					}
				}
				$returnValue['coupons']=$coupons;							
				$returnValue['foodids']=$foodids;
				$returnValue['favorites']=$favorites;
//-----------------------------				
			}
			else{
				$returnValue["status"]="wrongpassword";
			}
		} else {
			$returnValue["status"]="nouser";
		}				
	}				

	echo json_encode($returnValue);
?>