<?php
	include("dbcon.inc");

	$userid = trim($_POST['userid']);	
	$response=array("status"=>"error");				
	$couponhistory=array();
	$totalincome = 0;
	$totalspent = 0;

	$historysql = "SELECT * FROM anas_coupon_history WHERE userid='".$userid."'";
	$response["aaa"] = $historysql;
	$result = mysql_query($historysql,$conn);
	if($result){
		if (mysql_num_rows($result)>0) {
	// 	// output data of each row
			while($row = mysql_fetch_array($result)){
				$temp=array();
				$temp['usedate']=$row['usedate'];
				$couponidstr = $row['couponid'];
				$temp['couponid']="$couponidstr";
				$foodid = $row['foodid'];
				$selsql = "SELECT * FROM anas_food WHERE id='".$foodid."'";
				$result1 = mysql_query($selsql,$conn);
				$row1 = mysql_fetch_array($result1);

				$temp['foodname']=$row1['name'];
				
				array_push($couponhistory,$temp);
			}
			$response["coupon"]=$couponhistory;	
			$response["status"] = "ok";			
		}
		else{
			$response["status"] = "nohistory";
		}
		
	}

	echo json_encode($response);
?>