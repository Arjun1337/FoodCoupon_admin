<?php
	include("dbcon.inc");

    $userid = trim($_POST['userid']);
    $addvalue  = trim($_POST['addvalue']);
    $wallet  = trim($_POST['wallet']);

    $walletreason = "Deposite";
    $returnValue=array("status"=>"fail");
   
    $nowdate = new DateTime();
    $startdate = $nowdate->format("Y-m-d H:i:s");
	
	$sql = "UPDATE anas_user SET wallet = '$wallet' WHERE id='$userid'";
	$result = mysql_query($sql,$conn);
	$hissql = "INSERT INTO anas_billing(userid, paydate,transaction,amount,type) 
	VALUES ('$userid','$startdate','$walletreason','$addvalue','income')";	
	mysql_query($hissql,$conn);
	if($result){
		$returnValue['status']="ok";
	}
	else{
		$returnValue['status']="fail";
	}

	echo json_encode($returnValue);
?>