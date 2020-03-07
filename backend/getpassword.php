<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$mobile=trim($decoded['mobile']);

	$returnValue=array("status"=>"fail");
	
	$sql = "SELECT password FROM anas_user WHERE mobile='$mobile' limit 1";
    $result = mysql_query($sql,$conn);
    $row=mysql_fetch_array($result);

	if($result){
		if(mysql_num_rows($result)>0){
            $returnValue['status']="ok";
            $returnValue['mobile']=$mobile;
            $returnValue['password']=$row['password'];
		}
		else{
            $returnValue['status']="nouser";
		}
	}

	echo json_encode($returnValue);
?>