<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);
	$mobile=$_POST['mobile'];
	$password=$_POST['password'];
	
	$returnValue=array("status"=>"error");
	
	$sql = "SELECT * FROM anas_user WHERE mobile='".$mobile."'";
	
	$result = mysql_query($sql,$conn);
	if($result){

		if (mysql_num_rows($result)>0) {
			
	// 		// output data of each row					
                
           
            $sql1 = "UPDATE anas_user SET password='$password' WHERE mobile='".$mobile."'";           
            $result = mysql_query($sql1,$conn);
            if($result){            	
                $returnValue["status"]= "ok";
                $to      = $email;
                $subject = 'Password reset';
                $message = $password;
                $headers = 'From: The-work-kw.com' . "\r\n" .
                    'Reply-To: info@the-work-kw.com' . "\r\n" .
                    'X-Mailer: PHP/' . phpversion();
                
                mail($to, $subject, $message, $headers);

            }
						
		} 

	}
	else {
            $returnValue['status']="nouser";
		}
	echo json_encode($returnValue);
?>