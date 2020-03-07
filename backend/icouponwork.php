<?php
	include("dbcon.inc");	

    $userid=trim($_POST['userid']);	
	$foodid=trim($_POST['foodid']);
	$couponid = 0;
	$nowTime=new DateTime();	
	$usedate = $nowTime->format("Y-m-d H:i:s");

	$returnValue=array("status"=>"fail");
	$setsql = "SELECT * FROM anas_coupon WHERE userid='$userid' AND foodid='$foodid'";
	$result = mysql_query($setsql,$conn);
	if($result){
		while($row = mysql_fetch_array($result)){
		$couponid = $row['id'];
		}
		$returnValue['couponid']="$couponid";
		
		$sql = "DELETE FROM anas_coupon WHERE id = '".$couponid."'";	
		$result1 = mysql_query($sql,$conn);
		if($result1){
			$insersql = "INSERT INTO anas_coupon_history (couponid,userid, foodid,usedate) VALUES ('$couponid','$userid','$foodid','$usedate')";
			$result2 = mysql_query($insersql,$conn);
			if($result2){
				$returnValue['status']="ok";
			}
			else{
				$returnValue['status']="fail";
			}		
			$returnValue['status']="ok";
		}
		else{
			$returnValue['status']="fail";
		}
	}
	

	echo json_encode($returnValue);
?>