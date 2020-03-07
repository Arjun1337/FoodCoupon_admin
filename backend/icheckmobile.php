<?php
	include("dbcon.inc");
	$mobile=trim($_POST['mobile']);
	$token = $_POST['phonetoken'];
			

	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	$result = mysql_query($sql,$conn);
	$response=array();
	$nowTime=new DateTime();	
	$usedate = $nowTime->format("Y-m-d");

	if($result){
		if( mysql_num_rows($result)>0){
		    $sql1 = "UPDATE anas_user SET token = '$token' WHERE mobile='$mobile'";
			mysql_query($sql1,$conn);
		    $row = mysql_fetch_array($result);
		    $response["startdate"]=$row["startdate"];
			$response["expiredate"]=$row["expiredate"];
			$response["nowdate"] = $usedate;
			$response['status']="ok";
		}
		else
		{		
			$response['status']="nouser";
		}
	}
	else{
		$response['status']="error";
	}		

	echo json_encode($response);
?>