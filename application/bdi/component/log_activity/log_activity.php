

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    include "../../function/saveautomatic.php";

    $countryid = $_GET['country'];
    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
        $db->sql("INSERT INTO `tb_province` (".$datas.",`tb_country_id`)VALUES (".$values.",$countryid);");

                $res = $db->getResult();
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        
        $db->sql("UPDATE `tb_province` SET ".$datas.",`tb_country_id`=".$countryid." WHERE `tb_province_id` =".$id.";");
   //     $db->update('tb_country', array('tb_country_name' => "" . $name . "", 'tb_country_code' => "" . $code . ""), 'tb_country_id=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
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
//if($_GET['listaction'] == 'search'){
$dblist = new Database();
$dblist->connect();
//$dblist->sql('select * from tb_log_activity limit '.$_GET['limit']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$dblist->sql('select * from tb_log_activity');
$list_query = $dblist->getResult();

$length_list = count($list_query);


?>
<?php

$exportpdf = "exportPdf('pdf','pdf-country','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-country','&id=id'
$exportexcel = "exportExcel('excel','excel-country','');";

include "../../function/contentmodul.html.php";

//}
?>

