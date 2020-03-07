<?php
	include("dbcon.inc");

	$verifycode=trim($_POST['verifycode']);	
	$mobile=trim($_POST['mobile']);
			

	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	$result = mysql_query($sql,$conn);
	$response=array();
	

	if($result){
		if( mysql_num_rows($result)>0){
			$response['status']="existuser";
		}
		else
		{		
			$response['status']="ok";
		}
	}
	else{
		$response['status']="error";
	}		

	echo json_encode($response);
?>