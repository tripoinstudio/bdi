<?php 

$startdate = '2015-01-01';
$enddate = '2015-01-13';

include('mysql_crud.php');
$db = new Database();
$db->connect();
//$db->sql("SELECT * FROM `tb_salesorder-item` t INNER JOIN `tb_salesorder` s ON t.tb_salesorder_id = s.tb_salesorder_id WHERE s.tb_salesorder_date >= '".$startdate."'
//AND s.tb_salesorder_date <= '".$enddate."'"); 
$db->sql('SELECT *
FROM `tb_salesorder-item`
WHERE `tb_salesorder_id` =12'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
              
$res= $db->getResult();
echo ($res);

foreach($res as $output){
	
echo $output['tb_salesorder-item_qty'];	
}
/*
require_once("../configuration.php");
$list_query=mysql_query("SELECT *
FROM `tb_salesorder-item` t
INNER JOIN `tb_salesorder` s ON t.tb_salesorder_id = s.tb_salesorder_id
WHERE s.tb_salesorder_date >= '.$startdate.'
AND s.tb_salesorder_date <= '.$enddate.'");
if($list_query== FALSE) { 
    die(mysql_error()); // TODO: better error handling
}
while($array_list_query=mysql_fetch_array($list_query)){
	echo $array_list_query['tb_salesorder_namecust'];	
}*/

?>