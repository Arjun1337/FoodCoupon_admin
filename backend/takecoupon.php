<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

    $userid=$decoded['userid'];
    $foodid=$decoded['foodid'];
    $restaurantid=$decoded['restaurantid'];
    $restaurantpin=trim($decoded['restaurantpin']);

    $sql = "SELECT `pin` FROM `anas_restaurant` WHERE id=$restaurantid limit 1";
    $result = mysql_query($sql,$conn);
    $value = mysql_fetch_object($result);
    $pin=$value->pin;

    $returnValue=array();
    $returnValue['status']="fail";
    if($pin==$restaurantpin){

        $sql = "SELECT * FROM `anas_coupon` WHERE foodid=$foodid AND userid=$userid limit 1";
        $result = mysql_query($sql,$conn);
        $value = mysql_fetch_object($result);

        $couponid=$value->id;   //coupon id
        $usedate=new dateTime();
        $usedate=$usedate->format('Y-m-d H:i:s');
        //delete coupon
        $sql = "DELETE  FROM `anas_coupon` WHERE id=$couponid";
        $result = mysql_query($sql,$conn);
        //add history
        $sql = "INSERT INTO `anas_coupon_history`(`couponid`, `userid`, `foodid`, `usedate`) VALUES ($couponid,$userid,$foodid,'$usedate')";
        $result = mysql_query($sql,$conn);
        
        $returnValue['status']='ok';
        $returnValue['couponid']=$couponid;
    }
    else{
        $returnValue['status']="wrong";
    }

    echo json_encode($returnValue);
?>