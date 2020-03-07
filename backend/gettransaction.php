<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$userid=trim($decoded['userid']);

    $returnValue=array("status"=>"fail");
    $transactions=array();

    $sql = "SELECT * FROM anas_billing WHERE userid=$userid";
    $result = mysql_query($sql,$conn);
    if($result){
        if (mysql_num_rows($result)>0) {

            while($row = mysql_fetch_array($result)){

                $temp=array();
                $temp['paydate']=$row['paydate'];
                $temp['transaction']=$row['transaction'];
                $temp['amount']=$row['amount'];
                $temp['type']=$row['type'];
                array_push($transactions,$temp);
                
            }
            $returnValue['status']="ok";
            $returnValue['transactions']=$transactions;

        }
        else{
            $returnValue["status"]="notransaction";
        }
    }
    else{
        $returnValue["status"]="notransaction";
    }	

    echo json_encode($returnValue);
?>