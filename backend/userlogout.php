<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$mobile=trim($decoded['mobile']);
	
	//delete session
	$sql = "UPDATE `anas_user` SET `session`='' WHERE mobile='$mobile'";
    $result = mysql_query($sql,$conn);
    
	echo json_encode($returnValue);
?>