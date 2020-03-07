<?php
	include("dbcon.inc");	

    $user_id=trim($_POST['userid']);	
	$food_id=trim($_POST['foodid']);

	$returnValue=array("status"=>"fail");
	$sql = "DELETE FROM anas_favorite WHERE userid = '".$user_id."' AND foodid = '".$food_id."'";
	
	$result = mysql_query($sql,$conn);
	if($result){
		$returnValue['status']="ok";
	}
	else{
		$returnValue['status']="fail";
	}

	echo json_encode($returnValue);
?>