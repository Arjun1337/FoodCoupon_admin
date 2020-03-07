<?php
	include("dbcon.inc");	
	
	$userid=trim($_POST['userid']);	
	$returnValue=array("status"=>"nofood");
	$returnValue["aaa"]=$userid;
	$foods=array();
	$admobs=array();
	
	$admobsql = "SELECT * FROM anas_admob";
	
	$result1 = mysql_query($admobsql,$conn);
	if($result1){
		if (mysql_num_rows($result1)>0) {
			// output data of each row
			while($row = mysql_fetch_array($result1)){
				$temp1=array();
				$temp1['admobimage']=$row['image'];	
				array_push($admobs,$temp1);			
			}
			$returnValue["status"]="ok";
			$returnValue["admobs"]=$admobs;
		}
		else{
			$returnValue["status"]="nofood";
		}
	}
	else{
		$returnValue["status"]="Error";
	}	



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
				$temp['arfoodname']=$row['arname'];
				$temp['foodimage']=$row['image'];
				$temp['fooddescription']=$row['description'];
				$temp['arfooddescription']=$row['ardescription'];
				$temp['foodneeddes']=$row['needdescription'];
				$temp['arfoodneeddes']=$row['arneeddescription'];
				$temp['foodstatus']=$row['status'];
				$checksql = "SELECT * FROM anas_favorite WHERE userid='".$userid."' AND foodid='".$row['id']."'";				
				$result1 = mysql_query($checksql,$conn);
				$temp["count"]=mysql_num_rows($result1);

				$ressql = "SELECT * FROM anas_restaurant WHERE id='".$row['restaurantid']."'";	
				$result2 = mysql_query($ressql,$conn);
				while($row1 = mysql_fetch_array($result2))
				{					
					$temp['resname']=$row1['name'];
					$temp['arresname']=$row1['arname'];
					$temp['respin'] = $row1['pin'];
					$temp['resimage']=$row1['image'];
					$temp['reslogo']=$row1['logo'];
					$temp['resaddress'] = $row1['address'];
					$temp['arresaddress'] = $row1['araddress'];
					$temp['resposition'] = $row1['position'];
					$temp['resmobile'] = $row1['phone'];
					$temp['resopentime'] = $row1['opentime'];
					$temp['resdescription'] = $row1['description'];
					$temp['arresdescription'] = $row1['ardescription'];
				}
				
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