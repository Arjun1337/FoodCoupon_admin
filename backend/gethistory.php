<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$userid=trim($decoded['userid']);

    $returnValue=array("status"=>"fail");
    $histories=array();

    $sql = "SELECT * FROM anas_coupon_history a JOIN anas_food b ON a.foodid = b.id WHERE a.userid=$userid";
    // $sql = "SELECT * FROM anas_coupon_history WHERE userid=$userid";
    $result = mysql_query($sql,$conn);
    if($result){
        if (mysql_num_rows($result)>0) {

            while($row = mysql_fetch_array($result)){

                $temp=array();
                $temp['date']=$row['usedate'];
                $temp['couponid']=$row['couponid'];
                $temp['foodname']=$row['name'];
                array_push($histories,$temp);
                
            }
            $returnValue['status']="ok";
            $returnValue['histories']=$histories;

        }
        else{
            $returnValue["status"]="nohistory";
        }
    }
    else{
        $returnValue["status"]="nohistory";
    }	

    echo json_encode($returnValue);
?>