 

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    include "../../function/saveautomatic.php";

    $ritualid = $_GET['ritual_activity'];
    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
        $db->sql("INSERT INTO `tb_ritual_activity` (".$datas.",`tb_sentra_province_id`)VALUES (".$values.",$ritualid);");

                $res = $db->getResult();
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        
        $db->sql("UPDATE `tb_sentra` SET ".$datas.",`tb_sentra_province_id` = $sentraid WHERE `tb_sentra_id` =".$id.";");
   //     $db->update('tb_cetya', array('tb_cetya_name' => "" . $name . "", 'tb_cetya_code' => "" . $code . ""), 'tb_cetya_id=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
    }
}

include "../../function/functionaction.php";
?>
<?php
//if($_GET['action'] == 'searchs'){
//    if($_GET['searchtype']=='code'){
//        $texts = 'tb_cetya_code';
//    } else if($_GET['searchtype']=='name'){
//        $texts = 'tb_cetya_name';
//    } else {
//        $texts = '';
//    }
//$parentuser = $texts." like '%".$_GET['searchfield']."%' and status=1";

$dblist = new Database();
$dblist->connect();
$dblist->sql('select s.tb_ritual_activity_id, s.tb_ritual_activity_dharmasala_id, p.tb_dharmasala_name from tb_ritual_activity s join tb_dharmasala p on s.tb_ritual_activity_dharmasala_id = p.tb_dharmasala_id'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);

?>
<?php

$exportpdf = "exportPdf('pdf','pdf-cetya','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-cetya','&id=id'
$exportexcel = "exportExcel('excel','excel-cetya','');";

include "../../function/contentmodul.html.php";
?>

