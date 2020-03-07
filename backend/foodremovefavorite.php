<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

    $userid=trim($decoded['userid']);
    $foodid=trim($decoded['foodid']);

    $sql = "DELETE FROM `anas_favorite` WHERE userid='$userid' AND foodid='$foodid'";
    $result = mysql_query($sql,$conn);

    $returnValue=array();
    if($result){
        $returnValue['status']="ok";
    }
    else{
        $returnValue['status']="fail";
    }
	echo json_encode($returnValue);
?>