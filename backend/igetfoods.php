<?php
	include("dbcon.inc");	
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);
	
	$resid=trim($_POST['resid']);	
	$userid=trim($_POST['userid']);	
	$returnValue=array("status"=>"nofood");
	$foods=array();

		$sql = "SELECT * FROM anas_food WHERE restaurantid=".$resid;
		$returnValue["aa"]=$sql;
		$result = mysql_query($sql,$conn);
		if($result){
			if (mysql_num_rows($result)>0) {
				// output data of each row
				while($row = mysql_fetch_array($result)){
					$temp=array();
					$temp['id']=$row['id'];
					$temp['resid']=$row['restaurantid'];
					$temp['name']=$row['name'];
					$temp['arname']=$row['arname'];
					$temp['image']=$row['image'];
					$temp['description']=$row['description'];
					$temp['needdes']=$row['needdescription'];
					$temp['ardescription']=$row['ardescription'];
					$temp['arneeddes']=$row['arneeddescription'];

					$checksql = "SELECT * FROM anas_favorite WHERE userid='".$userid."' AND foodid='".$row['id']."'";
					$result1 = mysql_query($checksql,$conn);
					$temp["count"]=mysql_num_rows($result1);

					$couponsql = "SELECT * FROM anas_coupon WHERE userid='".$userid."' AND foodid='".$row['id']."' ";
					$result2 = mysql_query($couponsql , $conn);
					$couponcount =  mysql_num_rows($result2);
					$temp['coupon'] =  "$couponcount";
					// $temp['adfadf'] = $couponsql;	
					// $temp['coupon'] =  "a";
					
					array_push($foods,$temp);
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