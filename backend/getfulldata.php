<?php
	include("dbcon.inc");
	
	$content=trim(file_get_contents("php://input"));
	$decoded=json_decode($content,true);

	$userid=trim($decoded['userid']);

	$returnValue=array("status"=>"fail");
	
	$sql = "SELECT language FROM anas_user WHERE id='$userid'";
	$result = mysql_query($sql,$conn);
	$language="";
	if($result && mysql_num_rows($result)>0){
		$row = mysql_fetch_array($result);
		$language=$row["language"];
	}
	else{
		return json_encode($returnValue);
		exit();
	}
						
	$restaurants=array();

		$sql = "SELECT * FROM anas_restaurant WHERE 1";
		$result = mysql_query($sql,$conn);
		if($result){
			if (mysql_num_rows($result)>0) {

				while($row = mysql_fetch_array($result)){

					$temp=array();
					$temp['id']=$row['id'];
					$temp['name']=$row['name'];
					$temp['logo']=$row['logo'];
					$temp['image']=$row['image'];
					$temp['address']=$row['address'];
					$temp['position']=$row['position'];
					$temp['phone']=$row['phone'];
					$temp['opentime']=$row['opentime'];
					$temp['description']=$row['description'];
					$temp['pin']=$row['pin'];
					if($language!="English"){
						$temp['name']=$row['arname'];
						$temp['address']=$row['araddress'];
						$temp['description']=$row['ardescription'];
					}
					array_push($restaurants,$temp);
					
				}
				$returnValue['restaurants']=$restaurants;

				//read food data
				$foods=array();
				$sql = "SELECT * FROM anas_food WHERE 1";
				$result = mysql_query($sql,$conn);
				if($result){
					if (mysql_num_rows($result)>0) {
		
						while($row = mysql_fetch_array($result)){
		
							$temp=array();
							$temp['id']=$row['id'];
							$temp['restaurantid']=$row['restaurantid'];
							$temp['name']=$row['name'];
							$temp['image']=$row['image'];
							$temp['description']=$row['description'];
							$temp['needdescription']=$row['needdescription'];
							if($language!="English"){
								$temp['name']=$row['arname'];
								$temp['description']=$row['ardescription'];
								$temp['needdescription']=$row['arneeddescription'];
							}
							array_push($foods,$temp);
						}
						$returnValue["status"]="ok";
						$returnValue['foods']=$foods;
//Monthly fee, yearly fee						
						$sql = "SELECT * FROM `anas_setting` WHERE 1 limit 1";
						$result = mysql_query($sql,$conn);
						$row = mysql_fetch_array($result);

						$returnValue["monthly_fee"]=$row['monthlypay'];
						$returnValue["yearly_fee"]=$row['yearlypay'];
//contact email, phone

						$returnValue["contact_email"]=$row['contactemail'];
						$returnValue["contact_phone"]=$row['contactmobile'];
//user session check
						$returnValue['session']="no";

						$sql = "SELECT * FROM anas_user WHERE id='$userid'";
						$result = mysql_query($sql,$conn);
						if($result && mysql_num_rows($result)>0){
							$returnValue['session']="ok";
//---------userdata read--------------------							
							$row = mysql_fetch_array($result);
							$temp=array();
							$userid=$row["id"];
							$temp["id"]=$row["id"];
							$temp["name"]=$row["name"];
							$temp["email"]=$row["email"];
							$temp["password"]=$row["password"];
							$temp["mobile"]=$row["mobile"];
							$temp["avatar"]=$row["avatar"];
							$temp["language"]=$row["language"];
							$temp["role"]=$row["role"];
							$temp["startdate"]=$row["startdate"];
							$today=new dateTime();
							$expiredate=new dateTime($row["expiredate"]);
							$temp["expiredate"]=($today>$expiredate)?"free":$expiredate->format('Y-m-d');	
							$temp["promocode"]=$row["promocode"];
							$temp["wallet"]=$row["wallet"];
							$returnValue['user']=$temp;

							$coupons=array();
							$foodids=array();
							$favorites=array();
							if($today<$expiredate){
								$sql = "SELECT id,foodid FROM anas_coupon WHERE userid='$userid'";
								$result = mysql_query($sql,$conn);
								if($result && mysql_num_rows($result)>0){
									while($row = mysql_fetch_array($result)){
										array_push($coupons,$row['id']);
										array_push($foodids,$row['foodid']);
									}
								}
							}
							$sql = "SELECT foodid FROM anas_favorite WHERE userid='$userid'";
							$result = mysql_query($sql,$conn);
							if($result && mysql_num_rows($result)>0){
								while($row = mysql_fetch_array($result)){
									array_push($favorites,$row['foodid']);
								}
							}
							$returnValue['coupons']=$coupons;							
							$returnValue['foodids']=$foodids;
							$returnValue['favorites']=$favorites;
//----------------------------------							
						}
					}
					else{
						$returnValue["status"]="nofood";
					}
				}
				else{
					$returnValue["status"]="nofood";
				}	

			}
			else{
				$returnValue["status"]="norestaurant";
			}
		}
		else{
			$returnValue["status"]="norestaurant";
		}	

		echo json_encode($returnValue);
?>