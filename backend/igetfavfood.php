<?php
	include("dbcon.inc");	
	
	$userid=trim($_POST['userid']);	
	$returnValue=array("status"=>"nofood");
	$returnValue["aaa"]=$userid;
	$foods=array();
	$sql = "SELECT * FROM anas_food";
	
	$result = mysql_query($sql,$conn);
	if($result){
		if (mysql_num_rows($result)>0) {
			// output data of each row
			while($row = mysql_fetch_array($result)){
				$temp=array();
				$temp['foodid']=$row['id'];
				$temp['resid']=$row['restaurantid'];
				$temp['foodname']=$row['name'];
				$temp['foodimage']=$row['image'];
				$temp['fooddescription']=$row['description'];
				$temp['foodneeddes']=$row['needdescription'];
				$checksql = "SELECT * FROM anas_favorite WHERE userid='".$userid."' AND foodid='".$row['id']."'";				
				$result1 = mysql_query($checksql,$conn);
				$count =mysql_num_rows($result1);


				$couponsql = "SELECT * FROM anas_coupon WHERE userid='".$userid."' AND foodid='".$row['id']."' ";
					$result2 = mysql_query($couponsql , $conn);
					$couponcount =  mysql_num_rows($result2);
					$temp['coupon'] =  "$couponcount";




				$ressql = "SELECT * FROM anas_restaurant WHERE id='".$row['restaurantid']."'";	
				$result2 = mysql_query($ressql,$conn);
				while($row1 = mysql_fetch_array($result2))
				{					
					$temp['resname']=$row1['name'];
					$temp['respin'] = $row1['pin'];
					$temp['resimage']=$row1['image'];
					$temp['reslogo']=$row1['logo'];
					$temp['resaddress'] = $row1['address'];
					$temp['resposition'] = $row1['position'];
					$temp['resmobile'] = $row1['phone'];
					$temp['resopentime'] = $row1['opentime'];
					$temp['resdescription'] = $row1['description'];
				}
				if($count!=0){
					array_push($foods,$temp);
				}						
			}
			$returnValue["status"]="ok";
			$returnValue["foods"]=$foods;
		}
		else{
			$returnValue["status"]="nofood";
		}
	}
	else{
		$returnValue["status"]="Error";
	}
	echo json_encode($returnValue);
?>