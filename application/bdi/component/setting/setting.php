
<?php


$code = mysql_real_escape_string($_GET['code']);
$name = mysql_real_escape_string($_GET['name']);

$dbproduct = new Database();
$dbproduct->connect();
//$dbproduct->select('tb_settings', '*', NULL, 'id_user='.$_SESSION['user_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions


if($_GET['action'] == 'update'){
//	$id = $_GET['id'];
	$dbproduct->update('tb_settings',array('tb_settings_code'=>"".$code."",'tb_settings_name'=>"".$name.""),'user_username="'.$_SESSION['username'].'"'); // Table name, column names and values, WHERE conditions
	$res = $dbproduct->getResult();
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
}

$dbproduct->select('tb_settings', '*', NULL, 'tb_settings_code="'.$_SESSION['company_code'].'"');
$list_product = $dbproduct->getResult();

foreach ($list_product as $array_list_product) {
    $code = $array_list_product['tb_settings_code'];
    $name = $array_list_product['tb_settings_name'];
}

$dbproduct->select('tb_user', '*', NULL, 'company_code="'.$code.'"');
$list_users = $dbproduct->getResult();

include "../../function/contentmodul.html.php";




//$list_query=mysql_query("select * from tb_".$cekMenu['menu_function_link']." where status=1");

//$length_list = count($list_query);
?>


