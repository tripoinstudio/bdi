<?php
session_start();
if (!isset($_SESSION['username'])) {
    header('location:../../index.php');
    //	$cekSession = 1;
}

$contenty = $_GET['content'];

require_once("class/mysql_crud.php");

include("configuration.php");
require_once("function/function.php");
require_once("function/component.php");

$resultMenu = $_GET['content'];
$cekMenuQuery = mysql_query("select * from menu_function where menu_function_link='" . $resultMenu . "'");
if ($cekMenuQuery === FALSE) {
    die(mysql_error()); // TODO: better error handling
}

$cekMenu = mysql_fetch_array($cekMenuQuery);
$menuListUmat = '';

	if($_GET['namemenu'] == null){
		
		$menuListUmat = $cekMenu['menu_function_name'];
	}  else {
		$menuListUmat = $_GET['namemenu'];
	}
if ($_SESSION['timeout'] + (30*60)< time()) {
		 logout();
		echo "<script>setTimeout(\"location.href = '.';\",0);</script>";
     // session timed out
  } else {
	  $_SESSION['timeout'] = time();
     // session ok
  }

$contenty = $_GET['content'];

$ipconfigs = 'http://10.10.130.222:8080';

$whereset = $_SESSION['company_code'];
$dbgrou = new Database();
$dbgrou->connect();
$dbgrou->select("tb_settings", "*", NULL, "tb_settings_code='" . $whereset . "'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_settings = $dbgrou->getResult();
foreach ($list_settings as $list_settings2) {
    $idsettings = $list_settings2['tb_settings_id'];
    $parentsta = "company_code=" . $idsettings . " AND status=1";
}
//$dbgrou->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupa);
$dbgrou->sql("SELECT * FROM `structure_menu` s INNER JOIN `menu_function` m ON s.`menu_function_id`=m.`menu_function_id`  WHERE s.`tb_group_id`='" . $_SESSION['id_group'] . "' and m.`menu_function_link`='" . $contenty . "'");
$cekmen = $dbgrou->getResult();

foreach ($cekmen as $cekmens) {
    // $noi += 1;
    // $menuid = $cekmens['menu_function_id'];
    $cekaction = explode(',', $cekmens['structure_menu_action']);
	
}

    include 'controller/' . $_GET['content'] . '/' . $_GET['content'] . '.php';
