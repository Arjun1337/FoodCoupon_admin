<?php
	include("dbcon.inc");

	$mobile = trim($_POST['mobile']);
	
	$response=array("status"=>"error");		
	
	$nowTime=new DateTime();	
	$usedate = $nowTime->format("Y-m-d");
	
	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	$result = mysql_query($sql,$conn);
	if($result){
		// output data of each row
		$row = mysql_fetch_array($result);	
		$response["promo"] = $row["promocode"];		
		$response["wallet"] = $row["wallet"];
		$response["nowdate"] = $usedate;
		$response["status"] = "ok";			
	}

	$userinvite = 0.0;
	$clientinvite = 0.0;
	

	$settingsql = "SELECT * FROM anas_setting";	
	$result1 = mysql_query($settingsql,$conn);
	if($result1){
		if (mysql_num_rows($result1)>0) {
			$row = mysql_fetch_array($result1);			
			$response["uinvite"]=$row["userinvite"];
			$response["cinvite"]=$row["clientinvite"];
			$response["status"]="ok";
		}
		else{
			$response["status"]="no";
			$response["uinvite"]="$userinvite";
			$response["cinvite"]="$clientinvite";
		}
	}
	else{
		$response["status"]="Error";	
		$response["uinvite"]="$userinvite";
		$response["cinvite"]="$clientinvite";
	}
	
	echo json_encode($response);
?>