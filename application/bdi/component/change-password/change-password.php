
<?php


$password_lama = mysql_real_escape_string($_GET['password_lama']);
$password_baru = mysql_real_escape_string($_GET['password_baru']);

$dbproduct = new Database();
$dbproduct->connect();
//$dbproduct->select('tb_settings', '*', NULL, 'id_user='.$_SESSION['user_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions


if($_GET['action'] == 'update'){
	$id = $_GET['id'];
	$dbproduct->update('tb_user',array('user_password'=>"".$password_baru.""),'user_id="'.$id.'"'); // Table name, column names and values, WHERE conditions
	$res = $dbproduct->getResult();

}


$dbproduct->select('tb_user', '*', NULL, 'user_id="'.$_SESSION['user_id'].'"');
$list_users = $dbproduct->getResult();

foreach ($list_users as $array_list_product) {
    $code = $array_list_product['user_password'];
	$user_id = $array_list_product['user_id'];
  //  $name = $array_list_product['user_password'];
}

include "../../function/contentmodul.html.php";

?>


