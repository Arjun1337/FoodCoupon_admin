<?php
	include("dbcon.inc");	
	
	$returnValue=array("status"=>"fail");

	$monthly = 0.0;
	$yearly = 0.0;
	$exchangerate = 0.0;
	$userinvite = 0.0;
	$clientinvite = 0.0;
	$contactmobile = "";
	$contactemail = "";

	$sql = "SELECT * FROM anas_setting";	
	$result = mysql_query($sql,$conn);
	if($result){
		if (mysql_num_rows($result)>0) {
			$row = mysql_fetch_array($result);
			$returnValue["monthly"]=$row["monthlypay"];
			$returnValue["yearly"]=$row["yearlypay"];
			$returnValue["rate"]=$row["exchangerate"];
			$returnValue["uinvite"]=$row["userinvite"];
			$returnValue["cinvite"]=$row["clientinvite"];
			$returnValue["cmobile"]=$row["contactmobile"];
			$returnValue["cemail"]=$row["contactemail"];
			$returnValue["status"]="ok";
		}
		else{
			$returnValue["status"]="no";
			$returnValue["monthly"]="$monthly";
			$returnValue["yearly"]="$yearly";
			$returnValue["rate"]="$exchangerate";
			$returnValue["uinvite"]="$userinvite";
			$returnValue["cinvite"]="$clientinvite";
			$returnValue["cmobile"]="$contactmobile";
			$returnValue["cemail"]="$contactemail";

		}
	}
	else{
		$returnValue["status"]="Error";
		$returnValue["monthly"]="$monthly";
		$returnValue["yearly"]="$yearly";
		$returnValue["rate"]="$exchangerate";
		$returnValue["uinvite"]="$userinvite";
		$returnValue["cinvite"]="$clientinvite";
	}
	echo json_encode($returnValue);
?>