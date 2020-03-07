<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$username=trim($decoded['username']);
	$message=trim($decoded['message']);
	
	$returnValue=array("status"=>"error");

	if(empty($username) ||empty($message)){
		
	}
	else{
		$sql = "SELECT email FROM user WHERE username='".$username."'";
		$result = mysql_query($sql,$conn);
		if($result){

			if (mysql_num_rows($result)>0) {
				// output data of each row
                $row = mysql_fetch_array($result);
                $email=$row["email"];

                        // $to      ="info@the-work-kw.com";
                        // $subject = 'Contact message from the-work-kw.com';
                        // $message = $message;
                        // $headers = 'From: $email' . "\r\n" .
                        //     'Reply-To: $email' . "\r\n" .
                        //     'X-Mailer: PHP/' . phpversion();
                        
                        // mail($to, $subject, $message, $headers);
                        $returnValue["status"]="ok";

			} else {
                $returnValue['status']="nouser";
			}
		}
	}
	echo json_encode($returnValue);
?>