<?php
	include("dbcon.inc");

	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);
    
	$id=intval($decoded['id']);
	$name=trim($decoded['name']);
	$email=trim($decoded['email']);
	$password=trim($decoded['password']);
	$language=trim($decoded['language']);

	$target_file="";
	if(isset($decoded['avatar'])){
		$target_file = "image/profile/". $id . time() . ".jpg";
		file_put_contents($target_file, base64_decode($decoded['avatar']));
		$sql = "UPDATE anas_user SET name='$name',email='$email',password='$password',language='$language',avatar='$target_file' WHERE id=$id";
	}
	else{
		$sql = "UPDATE anas_user SET name='$name',email='$email',password='$password',language='$language' WHERE id=$id";
	}
	
	$returnValue=array("status"=>"fail");

	$result = mysql_query($sql,$conn);
	if($result){
		$returnValue['status']="ok";
		$returnValue['avatar']=$target_file;
	}
	else{
		$returnValue['status']="fail";
	}

	echo json_encode($returnValue);
?>