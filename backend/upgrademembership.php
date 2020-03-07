<?php
	include("dbcon.inc");

	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);
    
	$id=intval($decoded['id']);
	$membership=trim($decoded['membership']);

    $returnValue=array("status"=>"fail");
//get wallet, monthly_fee, yearly_fee
    $sql = "SELECT `wallet` FROM `anas_user` WHERE id=$id limit 1";
    $result = mysql_query($sql,$conn);
    $value = mysql_fetch_object($result);
    $wallet=$value->wallet;

    $sql = "SELECT * FROM `anas_setting` WHERE 1 limit 1";
    $result = mysql_query($sql,$conn);
    $row = mysql_fetch_array($result);
    $monthly_fee=$row['monthlypay'];
    $yearly_fee=$row['yearlypay'];

    //file_put_contents("log.txt", $wallet.' '.$monthly_fee.' '.$yearly_fee);
    $temp=new dateTime();
    $startdate=$temp->format('Y-m-d');
    $starttime=$temp->format('Y-m-d H:i:s');
    if($membership=="monthly"){
        $temp=$temp->modify('+1 months');
        $expiredate=$temp->format('Y-m-d');
        $wallet=$wallet-$monthly_fee;
        $amount=$monthly_fee;
    }
    else{
        $temp=$temp->modify('+1 years');
        $expiredate=$temp->format('Y-m-d');
        $wallet=$wallet-$yearly_fee;
        $amount=$yearly_fee;
    }
    if($wallet>=0){
    
        $sql = "UPDATE anas_user SET wallet=$wallet,startdate='$startdate',expiredate='$expiredate' WHERE id=$id";
        $result = mysql_query($sql,$conn);
        if($result){
            $returnValue['status']="ok";
            $returnValue['wallet']=$wallet;
            $returnValue['startdate']=$startdate;
            $returnValue['expiredate']=$expiredate;

            //write history
            $transaction=$membership . " fee";
            $sql = "INSERT INTO `anas_billing`(`userid`, `paydate`, `transaction`, `amount`, `type`) VALUES ($id,'$starttime','$transaction',$amount,'spent')";
            $result = mysql_query($sql,$conn);            

            //delete remain coupon, add new coupon,read coupon data
            $sql="DELETE FROM `anas_coupon` WHERE userid=$id";
            $result = mysql_query($sql,$conn);

            $sql="SELECT `id` FROM `anas_food` WHERE 1";
            $result = mysql_query($sql,$conn);
            if($result && mysql_num_rows($result)>0){
                while($row = mysql_fetch_array($result)){
                    $foodid=$row['id'];
                    $sql1="INSERT INTO `anas_coupon`(`userid`, `foodid`) VALUES ($id,$foodid )";
                    $result1 = mysql_query($sql1,$conn);
                }
                $sql1="SELECT `id`, `foodid` FROM `anas_coupon` WHERE userid=$id";
                $result1 = mysql_query($sql1,$conn);
                $coupons=array();
                $foodids=array();

                if($result1 && mysql_num_rows($result1)>0){
                    while($row = mysql_fetch_array($result1)){
                        array_push($coupons,$row['id']);
                        array_push($foodids,$row['foodid']);
                    }
                }
                $returnValue['coupons']=$coupons;
                $returnValue['foodids']=$foodids;
            }
            //------------
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