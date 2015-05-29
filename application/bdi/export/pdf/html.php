<?php ob_start(); 
require_once('class/mysql_crud.php');
require_once("function/function.php");
?>

		<?php require $_GET['file'].'.php';?>
		