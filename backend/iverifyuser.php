<?php
	include("dbcon.inc");

	$mobile = trim($_POST['mobile']);	
	$pass= trim($_POST['password']);
	$token = $_POST['phonetoken'];
	
	$response=array("status"=>"error");
	$nowTime=new DateTime();	
	$usedate = $nowTime->format("Y-m-d");
	
	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	$result = mysql_query($sql,$conn);
	if($result){
		if (mysql_num_rows($result)>0) {
			// output data of each row
			$row = mysql_fetch_array($result);
			if($row["password"]==$pass){
			    $sql1 = "UPDATE anas_user SET token = '$token' WHERE mobile='$mobile'";
			    mysql_query($sql1,$conn);
				$response["status"]= "ok";
				$response["id"] = $row["id"];	
				$response["username"]=$row["name"];
				$response["mobile"]=$row["mobile"];
				$response["email"]=$row["email"];
				$response["role"]=$row["role"];
				$response["avatar"]=$row["avatar"];
				$response["startdate"]=$row["startdate"];
				$response["expiredate"]=$row["expiredate"];
				$response["language"] = $row["language"];
				$response["promo"] = $row["promocode"];
				$response["wallet"] = $row["wallet"];
				$response["nowdate"] = $usedate;
			}
			else{
				$response["status"]="wrongpassword";
			}
		} else {
			$response["status"]="nouser";
		}
	}
	
	echo json_encode($response);
?>