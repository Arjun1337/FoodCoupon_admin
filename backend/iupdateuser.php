<?php
	include("dbcon.inc");
	function base64_to_jpeg($base64_string,$last) {
		$target_path = "image/profile/";
		$sufix=time();
		$output_file=$target_path."IMG".$last;
		file_put_contents($output_file, base64_decode($base64_string));

		return $output_file; 
	}

	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);
    
    $mobile=trim($_POST['mobile']);	
	$email=trim($_POST['email']);
	$pass=$_POST['password'];
	$avatarsel =trim($_POST['avatarsel']);
	$username = trim($_POST['username']);
	$returnValue=array("status"=>"fail");
	if($avatarsel == "1"){

		$uploadfiles=$_POST["uploadfile"];
		$filename=base64_to_jpeg($uploadfiles, $username.$mobile.".jpg");
	 	$sql = "UPDATE anas_user SET email='$email',password='$pass' , avatar='$filename' WHERE mobile='$mobile'";
	 	$result = mysql_query($sql,$conn);
		if($result){
	 		$returnValue['status']="ok";
		}
		else{
			$returnValue['status']="fail";
		}
	}
	else{
		$returnValue['sel']="only";
		$sql = "UPDATE anas_user SET name = '$username', email='$email',password='$pass' WHERE mobile='$mobile'";
		$result = mysql_query($sql,$conn);
		if($result){
			$returnValue['status']="ok";
		}
		else{
			$returnValue['status']="fail";
		}
	}
	echo json_encode($returnValue);
?>