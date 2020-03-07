<?php
	include("dbcon.inc");
	$userid=trim($_POST['userid']);
	$foodid=trim(strtolower($_POST['foodid']));
	
	$sql = "INSERT INTO anas_favorite (userid, foodid) 
	VALUES ('$userid','$foodid')";
	$result = mysql_query($sql,$conn);
	if($result){
		$response['status']="ok";
	}
	else{
		$response['status']="fail";
	}		

	echo json_encode($response);
?>