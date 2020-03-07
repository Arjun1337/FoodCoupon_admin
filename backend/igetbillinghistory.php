<?php
	include("dbcon.inc");

	$userid = trim($_POST['userid']);	
	$response=array("status"=>"error");				
	$billings=array();
	$totalincome = 0;
	$totalspent = 0;
	$sql = "SELECT * FROM anas_user WHERE id='".$userid."'";
	
	$result = mysql_query($sql,$conn);
	if($result){
		// output data of each row
		$row = mysql_fetch_array($result);	
		if($row["wallet"] == 0){
			$response["wallet"] = "no";
		}else{
			$response["wallet"] = $row["wallet"];
		}
		
		// $response["status"] = "ok";			
	}

	$historysql = "SELECT * FROM anas_billing WHERE userid='".$userid."' ORDER BY id DESC";
	$response["aaa"] = $historysql;
	$result = mysql_query($historysql,$conn);
	if($result){
		if (mysql_num_rows($result)>0) {
		// output data of each row
			while($row = mysql_fetch_array($result)){
				$temp=array();
				$temp['paydate']=$row['paydate'];
				$temp['transaction']=$row['transaction'];
				$temp['amount']=$row['amount'];
				$temp['type']=$row['type'];
				if($row['type'] == "spent"){
					$totalspent = $totalspent + $row['amount'];
				}else{
					$totalincome = $totalincome + $row['amount'];
				}
				array_push($billings,$temp);
			}
			$response["billings"]=$billings;	
			$response["status"] = "ok";			
		}
	}
	$response["totalincome"] = "$totalincome";
	$response["totalspent"] = "$totalspent";
	if($totalincome == 0)
	{
		$response["totalincome"] ="no";
	}
	if($totalspent == 0)
	{
		$response["totalspent"] = "no";
	}
	
	

	echo json_encode($response);
?>