 <?php
	$DBHOST = "localhost";
	$DBNAME="thewor87_auction";
	$DBUSER = "thewor87_anton";
	$DBPASS = "qwertyuiop1234567890";

	// Create connection
	$conn = mysql_connect($DBHOST, $DBUSER,$DBPASS) or die("error");
	mysql_select_db($DBNAME,$conn) or die("error_db");
	mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'", $conn);

?> 