

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    //   include "../../function/saveautomatic.php";
    $data = json_decode($_GET['items']);

    $personal_identity = $data->personal_identity;
    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
        $db->insert('tb_family_relationship', array('tb_family_relationship_personal_id' => $personal_identity));
        $res2 = $db->getResult();
        $personal = $res2[0];
        foreach ($data->item as $items) {
            $code = $items->code;
            $name = $items->name;
            $db->insert('tb_relationship', array('tb_relationship_relation_code' => $code, 'tb_relationship_relationship_id' => $name, 'tb_family_relationship_id' => $personal)); // Table name, column names and values, WHERE conditions
            $res = $db->getResult();
        }
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        

        // $db->sql("UPDATE `tb_family_relationship` SET " . $datas . " WHERE `tb_cetya_id` =" . $id . ";");
        $db->update('tb_family_relationship', array('tb_family_relationship_personal_id' => $personal_identity), 'tb_family_relationship=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
        foreach ($data->item as $items) {
            $idItem = $items->idItem;
            $code = $items->code;
            $name = $items->name;

            if ($idItem == 0) {
                $db->insert('tb_relationship', array('tb_relationship_relation_code' => $code, 'tb_relationship_relationship_id' => $name, 'tb_family_relationship_id' => $id)); // Table name, column names and values, WHERE conditions
                $res = $db->getResult();
                echo 'MASUK SINI';
            } else {
                $db->update('tb_relationship', array('tb_relationship_relation_code' => "" . $code . "", 'tb_relationship_relationship_id' => "" . $name . "", 'tb_family_relationship_id' => "" . $id . ""), 'tb_relationship_id=' . $idItem . ''); // Table name, column names and values, WHERE conditions
                $res = $db->getResult();
            }
        }
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
$dblist->select('tb_family_relationship', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
?>
<?php

$exportpdf = "exportPdf('pdf','pdf-cetya','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-cetya','&id=id'
$exportexcel = "exportExcel('excel','excel-cetya','');";

include "../../function/contentmodul.html.php";
?>

