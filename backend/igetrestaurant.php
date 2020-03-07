<?php
	include("dbcon.inc");
	function getCoupon($userid,$foodid,$con){
		$count = 0;		
		$sql = "SELECT * FROM anas_coupon WHERE userid='$userid' AND foodid='$foodid' ";
		$result = mysql_query($sql,$con);
		$count =  mysql_num_rows($result);
		return $count;
	}
	
	$returnValue=array();
	$restaurant=array();
	$userid = trim($_POST['userid']);
	$sql = "SELECT * FROM anas_restaurant";
	$result = mysql_query($sql,$conn);
	if($result){
		$returnValue["status"]="ok";
		if (mysql_num_rows($result)>0) {
			// output data of each row
			while($row = mysql_fetch_array($result)){
				$temp=array();				
				$couponcount = 0;
				$temp['id']=$row['id'];
				$temp['name']=$row['name'];
				$temp['arname']=$row['arname'];
				$temp['pin'] = $row['pin'];
				$temp['image']=$row['image'];
				$temp['logo']=$row['logo'];
				$temp['address'] = $row['address'];
				$temp['araddress'] = $row['araddress'];
				$temp['position'] = $row['position'];
				$temp['mobile'] = $row['phone'];
				$temp['opentime'] = $row['opentime'];
				$temp['description'] = $row['description'];
				$temp['ardescription'] = $row['ardescription'];
				$getfoodidsql = "SELECT * FROM anas_food where restaurantid = '".$row['id']."'";
				$temp['adadfadf'] = $getfoodidsql; 
				$result1 = mysql_query($getfoodidsql,$conn);
				while($row1 = mysql_fetch_array($result1)){
				// 	$couponcount = $couponcount + getCoupon($row1['id'], $conn);
					
					$couponcount =$couponcount + getCoupon($userid, $row1['id'], $conn);
				}				
				$temp['coupon'] = "$couponcount";
				
				// $catid=$row['id'];
				// $sql1 = "SELECT * FROM product WHERE catid=$catid";
				// $result1 = mysql_query($sql1,$conn);
				// $temp["count"]=mysql_num_rows($result1);
				array_push($restaurant,$temp);
			}
			$returnValue["restaurant"]=$restaurant;
		}
	}
	else{
		$returnValue["status"]="norestaurant";
	}		

	echo json_encode($returnValue);
?>