<?php
	include("dbcon.inc");
	$userid=trim($_POST['userid']);
	$foodid=trim(strtolower($_POST['foodid']));
	
	$couponsql = "SELECT * FROM anas_coupon WHERE userid='".$userid."' AND foodid='".$foodid."' ";
	$result2 = mysql_query($couponsql , $conn);
	$couponcount =  mysql_num_rows($result2);
	$response['coupon'] =  "$couponcount";
	

	$sql = "SELECT * FROM anas_favorite WHERE userid=$userid AND foodid=$foodid";
	$result = mysql_query($sql,$conn);
	if($result){
		$count=mysql_num_rows($result);
		$response["count"] = "$count";
		$response['status']="ok";
	}
	else{
		$response['status']="fail";
	}		

	echo json_encode($response);
?>