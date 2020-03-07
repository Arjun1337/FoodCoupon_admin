<?php
// $nowTime=new DateTime();	
// $expiredate = $nowTime->format("Y/m/d");
// $expiredate->add(new DateInterval("P1M"));
// $newdate= $expiredate.
$time = strtotime('2013-08-23');

$newformat = date('Y/m/d',$time);

	echo $newformat;   

?>