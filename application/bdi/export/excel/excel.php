<?php
require_once('class/mysql_crud.php');  

header("Content-Type: application/xls"); 
header("Content-Disposition: attachment; filename=".$_GET['file']."-".date('Ymd').".xls");
header("Pragma: no-cache"); 
header("Expires: 0");

require $_GET['file'].'.php';

?>