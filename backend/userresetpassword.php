<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$username=trim($decoded['username']);
	$mobile=trim($decoded['mobile']);
	
	$returnValue=array("status"=>"error");

	if(empty($username) ||empty($mobile)){
		
	}
	else{
		$sql = "SELECT mobile,email FROM user WHERE username='".$username."'";
		$result = mysql_query($sql,$conn);
		if($result){

			if (mysql_num_rows($result)>0) {
				// output data of each row
				$row = mysql_fetch_array($result);
				if($row["mobile"]==$mobile){
                    
                    $password=md5($username."12345");
                    $sql = "UPDATE user SET password='$password' WHERE username='$username'";
                    $result = mysql_query($sql,$conn);
                    if($result){
                        $returnValue["status"]= "ok";

                        // $to      = $row["email"];
                        // $subject = 'Password reset';
                        // $message = $password;
                        // $headers = 'From: The-work-kw.com' . "\r\n" .
                        //     'Reply-To: info@the-work-kw.com' . "\r\n" .
                        //     'X-Mailer: PHP/' . phpversion();
                        
                        // mail($to, $subject, $message, $headers);
                    }
				}
				else{
					$returnValue["status"]="nomobile";
				}
			} else {
                $returnValue['status']="nouser";
			}
		}
	}
	echo json_encode($returnValue);
?>