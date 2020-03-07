<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$email=$_POST['useremail'];
	$userid = $_POST['userid'];
	$title =$_POST['title'];
	$content = $_POST['content'];
	$toemail = $_POST['toemail'];

	$nowdate = new DateTime();
    $startdate = $nowdate->format("Y-m-d H:i:s");
	$returnValue=array("status"=>"error");			
    $sql1 = "INSERT INTO anas_ticket (userid, title, message, senddate) VALUES ('$userid','$title','$content','$startdate')"; 
    $result = mysql_query($sql1,$conn);
    
    if($result){            	
        $returnValue["status"]= "ok";
        $to      = $toemail;
        $subject = $title;
        $message = $content;
        $headers = 'From: The-work-kw.com' . "\r\n" .
            'Reply-To: info@the-work-kw.com' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();
        
        mail($to, $subject, $message, $headers);
    }
						

	echo json_encode($returnValue);
?>