

<?php
if($_GET['action'] == 'search'){
$dblist = new Database();
$dblist->connect();
$dblist->select('tb_data_pembimbing', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
} else {
if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    include "../../function/saveautomatic.php";

    $itemUmatId = $_GET['itemUmatId'];
	$pembimbing = $_GET['pembimbing'];
	$tanggal = $_GET['tanggal'];
    $db = new Database();
    $db->connect();
//'created_date' => date('Y-m-d'),'created_by' => $_SESSION['user_id']
    if ($_GET['action'] == 'save') {
        $db->sql("INSERT INTO `tb_data_pembimbing` (".$datas.",`tb_data_pembimbing_tanggal`,`tb_pembimbing_id`,`tb_data_umat_id`,`created_date`,`created_by`)VALUES (".$values.",'".$tanggal."',".$pembimbing.",".$itemUmatId.",'".date('Y-m-d')."',".$_SESSION['user_id'].");");

                $res = $db->getResult();
				 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        
        $db->sql("UPDATE `tb_province` SET ".$datas.",`update_date`=".date('Y-m-d').",`update_by`=".$_SESSION['user_id']." WHERE `tb_province_id` =".$id.";");
   //     $db->update('tb_country', array('tb_country_name' => "" . $name . "", 'tb_country_code' => "" . $code . ""), 'tb_country_id=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
		 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
    }
}

include "../../function/functionaction.php";
?>
<?php
//if($_GET['action'] == 'searchs'){
//    if($_GET['searchtype']=='code'){
//        $texts = 'tb_country_code';
//    } else if($_GET['searchtype']=='name'){
//        $texts = 'tb_country_name';
//    } else {
//        $texts = '';
//    }
//$parentuser = $texts." like '%".$_GET['searchfield']."%' and status=1";


?>
<?php

$exportpdf = "exportPdf('pdf','pdf-country','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-country','&id=id'
$exportexcel = "exportExcel('excel','excel-country','');";

include "../../function/contentmodul.html.php";
}
?>

