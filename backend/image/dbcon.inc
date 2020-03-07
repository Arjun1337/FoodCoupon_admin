 <?php
	$DBHOST = "localhost";
	$DBNAME="thewor87_auction";
	$DBUSER = "thewor87_anton";
	$DBPASS = "qwertyuiop1234567890";

	// Create connection
	$conn = mysql_connect($DBHOST, $DBUSER,$DBPASS) or die("error");
	mysql_select_db($DBNAME,$conn) or die("error_db");

?> 