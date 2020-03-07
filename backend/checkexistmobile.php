<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$mobile=trim($decoded['mobile']);

	$returnValue=array("status"=>"fail");
	
	$sql = "SELECT * FROM anas_user WHERE mobile='$mobile'";
	$result = mysql_query($sql,$conn);
	if($result){
		if(mysql_num_rows($result)>0){
			$returnValue['status']="existmobile";
		}
		else{
            $returnValue['status']="ok";
		}
	}

	echo json_encode($returnValue);
?>