<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

    $userid=trim($decoded['userid']);
    $foodid=trim($decoded['foodid']);

    $sql = "INSERT INTO `anas_favorite`(`userid`, `foodid`) VALUES ($userid,$foodid)";
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