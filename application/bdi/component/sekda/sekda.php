

<?php


if($_GET['action'] == 'save' || $_GET['action'] == 'update'){

$code = mysql_real_escape_string($_GET['code']);
$name = mysql_real_escape_string($_GET['name']);
$password = mysql_real_escape_string($_GET['password']);
$daerah = $_GET['province'];

$db = new Database();
$db->connect();

if($_GET['action'] == 'save'){
	
	$db->insert('tb_user',array('user_username'=>''.$code.'','user_password'=>''.$password.'','user_fullname'=>$name,'tb_group_id'=>4,'user_status'=>1,'company_code'=>''.$_SESSION['company_code'].'')); 
	$res = $db->getResult();  
	$db->select('tb_user', '*', NULL, "user_username='".$code."'");
    $user_id = $db->getResult()[0]['user_id']; 
        
    $db->insert('tb_user_province',array('user_id'=>''.$user_id.'','tb_province_id'=>''.$daerah.''));
    $res = $db->getResult();
//	print_r($res);
//	$query1=mysql_query("insert into tb_".$cekMenu['menu_function_link']." values('','$code','$name','1')");
} else if($_GET['action'] == 'update'){
	$id = $_GET['id'];
	$db->update('tb_user',array('user_username'=>"".$code."",'user_password'=>"".$password."",'tb_group_id'=>4,'user_fullname'=>"".$name.""),'user_id='.$id.''); // Table name, column names and values, WHERE conditions
	$res = $db->getResult();
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
}

} 

include "../../function/functionaction.php";
?>
<?php
$parentuser = "tb_user.company_code='".$_SESSION['company_code']."' AND tb_user.user_status=1 AND tb_group.tb_group_name = 'sekda' AND tb_group.tb_group_id = tb_user.tb_group_id";

$dblist = new Database();
$dblist->connect();
$dblist->select('tb_user','*','tb_group',$parentuser); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();
//$list_query=mysql_query("select * from tb_".$cekMenu['menu_function_link']." where status=1");

$length_list = count($list_query);
    
?>
<?php 
include "../../function/contentmodul.html.php";
//include "../".$cekMenu['menu_function_link']."/".$cekMenu['menu_function_link'].".html.php";

?>

