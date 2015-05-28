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
$dbgrou = new Database();
$dbgrou->connect();
//$dbgrou->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupa);
$dbgrou->sql("SELECT * FROM `structure_menu` s INNER JOIN `menu_function` m ON s.`menu_function_id`=m.`menu_function_id`  WHERE s.`tb_group_id`='" . $_SESSION['id_group'] . "' and m.`menu_function_link`='" . $contenty . "'");
$cekmen = $dbgrou->getResult();

foreach ($cekmen as $cekmens) {
    // $noi += 1;
    // $menuid = $cekmens['menu_function_id'];
    $cekaction = explode(',', $cekmens['structure_menu_action']);
	
}

    include 'controller/' . $_GET['content'] . '/' . $_GET['content'] . '.php';
