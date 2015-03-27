

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    include "../../function/saveautomatic.php";

	$cetyaid = $_GET['cetya'];
    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
        $db->sql("INSERT INTO `tb_dharmasala` (".$datas.",`tb_dharmasala_cetya_id`)VALUES (".$values.",$cetyaid);");

                $res = $db->getResult();
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        
        $db->sql("UPDATE `tb_dharmasala` SET ".$datas." WHERE `tb_dharmasala_id` =".$id.";");
   //     $db->update('tb_dharmasala', array('tb_dharmasala_name' => "" . $name . "", 'tb_dharmasala_code' => "" . $code . ""), 'tb_dharmasala_id=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
    }
}

include "../../function/functionaction.php";
?>
<?php
//if($_GET['action'] == 'searchs'){
//    if($_GET['searchtype']=='code'){
//        $texts = 'tb_dharmasala_code';
//    } else if($_GET['searchtype']=='name'){
//        $texts = 'tb_dharmasala_name';
//    } else {
//        $texts = '';
//    }
//$parentuser = $texts." like '%".$_GET['searchfield']."%' and status=1";

$dblist = new Database();
$dblist->connect();
$dblist->select('tb_dharmasala', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);

?>
<?php

$exportpdf = "exportPdf('pdf','pdf-dharmasala','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-dharmasala','&id=id'
$exportexcel = "exportExcel('excel','excel-dharmasala','');";

include "../../function/contentmodul.html.php";
?>

