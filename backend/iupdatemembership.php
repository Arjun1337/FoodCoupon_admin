<?php
	include("dbcon.inc");

    $userid = trim($_POST['userid']);
    $paytype = trim($_POST['paytype']);
    $wallet  = trim($_POST['wallet']);
    $wallethis = 0.0;
    $walletreason = "Upgrade Membership";
    $returnValue=array("status"=>"fail");
    $wallethis = trim($_POST['payvalue']);
   
    $nowdate = new DateTime();
    $startdate = $nowdate->format("Y-m-d");
    $hisdate = $nowdate->format("Y-m-d H:i:s");
	$oldDay = $nowdate->format("d");
	if($paytype == "monthly"){
		$nowdate->add(new DateInterval("P1M"));		
	}
	else{
		$nowdate->add(new DateInterval("P1Y"));		
	}
	$newDay = $nowdate->format("d");
	if($oldDay != $newDay) {
	    // Check if the day is changed, if so we skipped to the next month.
	    // Substract days to go back to the last day of previous month.
	    $nowdate->sub(new DateInterval("P" . $newDay . "D"));
	}
	$expiredate = $nowdate->format("Y-m-d");    
	$wallet = $wallet - $wallethis;
	$sql = "UPDATE anas_user SET startdate = '$startdate', expiredate='$expiredate', wallet = '$wallet' WHERE id='$userid'";
	$result = mysql_query($sql,$conn);
	$hissql = "INSERT INTO anas_billing(userid, paydate,transaction,amount,type) VALUES ('$userid','$hisdate','$walletreason','$wallethis','spent')";
	mysql_query($hissql,$conn);
	if($result){
		$returnValue['expiredate'] = $expiredate;
		$returnValue['wallet'] = "$wallet";
		$delsql = "DELETE FROM anas_coupon WHERE userid = '".$userid."'";
		mysql_query($delsql,$conn);
		$setsql = "SELECT * FROM anas_food";
		$result1 = mysql_query($setsql,$conn);
		if($result1){
			if (mysql_num_rows($result1)>0) {
			// output data of each row
				while($row1 = mysql_fetch_array($result1)){				
					$insertcouponsql = "INSERT INTO anas_coupon(userid,foodid) 	VALUES ('".$userid."','".$row1['id']."')";
					mysql_query($insertcouponsql,$conn);
				}		
			}
		}
		$returnValue['status']="ok";
	}
	else{
		$returnValue['status']="fail";
	}

	echo json_encode($returnValue);
?>