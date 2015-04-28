<?php
require_once('class/mysql_crud.php');

header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=".$_GET['file'].".xls");
header("Pragma: no-cache");
header("Expires: 0");

require $_GET['file'].'.php';

?>