<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

    $userid=$decoded['userid'];
    $amount=$decoded['amount'];

    $sql = "SELECT `wallet` FROM `anas_user` WHERE id=$userid limit 1";
    $result = mysql_query($sql,$conn);
    $value = mysql_fetch_object($result);
    $wallet=$value->wallet;

    $wallet=$wallet+$amount;

    $sql = "UPDATE `anas_user` SET `wallet`=$wallet WHERE id=$userid";
    $result = mysql_query($sql,$conn);

    $returnValue=array();
    if($result){
        $paydate=new dateTime();
        $paydate=$paydate->format('Y-m-d H:i:s');
        $sql = "INSERT INTO `anas_billing`(`userid`, `paydate`, `transaction`, `amount`, `type`) VALUES ($userid,'$paydate','deposit',$amount,'income')";
        $result = mysql_query($sql,$conn);
        if($result){
            $returnValue['status']="ok";
            $returnValue['wallet']=$wallet;
        }
        else{
            $returnValue['status']="fail";
        }
    }
    else{
        $returnValue['status']="fail";
    }
	echo json_encode($returnValue);
?>