

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
   // include "../../function/saveautomatic.php";

    $itemUmatId = $_GET['itemUmatId'];
	$pembimbing = $_GET['pembimbing'];
	$tanggal = $_GET['tanggal'];
	$judul = $_GET['judul'];
	$pertanyaan = $_GET['pertanyaan'];
	$jawaban = $_GET['jawaban'];
    $db = new Database();
    $db->connect();
//'created_date' => date('Y-m-d'),'created_by' => $_SESSION['user_id']
    if ($_GET['action'] == 'save') {
       // $db->sql("INSERT INTO `tb_data_pembimbing` (".$datas.",`tb_data_pembimbing_tanggal`,`tb_pembimbing_id`,`tb_data_umat_id`,`created_date`,`created_by`,`created_host`)VALUES (".$values.",'".$tanggal."',".$pembimbing.",".$itemUmatId.",'".date('Y-m-d')."','".$_SESSION['username']."','".get_client_ip()."');");

           //     $res = $db->getResult();
				$query1 = mysql_query("INSERT INTO `tb_data_pembimbing` (`tb_data_pembimbing_tanggal`,`tb_pembimbing_id`,`tb_data_umat_id`,`tb_data_pembimbing_judul`,`tb_data_pembimbing_jawaban`,`tb_data_pembimbing_pertanyaan`,`created_date`,`created_by`,`created_host`)VALUES ('".$tanggal."',".$pembimbing.",".$itemUmatId.",'".$judul."','".$jawaban."','".$pertanyaan."','".date('Y-m-d')."','".$_SESSION['username']."','".get_client_ip()."');");
				$ids = mysql_insert_id();
				 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
		//		 echo $res[0];
		//		 echo $res[1];
				 echo '<input type="text" id="idUpdate" value="'.$ids.'" />';
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        $query1 = mysql_query("UPDATE `tb_data_pembimbing` SET `tb_data_pembimbing_tanggal`='".$tanggal."',`tb_pembimbing_id`=".$pembimbing.",`tb_data_umat_id`=".$itemUmatId.",`tb_data_pembimbing_tanggal`='".$tanggal."',`tb_data_pembimbing_judul`='".$judul."',`tb_data_pembimbing_pertanyaan`='".$pertanyaan."',`tb_data_pembimbing_jawaban`='".$jawaban."', `update_by` = '".$_SESSION['username']."', `update_date` = '".date('Y-m-d')."', `update_host` = '".get_client_ip()."' WHERE `tb_data_pembimbing_id`=".$id.";");
     //   $db->sql("UPDATE `tb_data_pembimbing` SET ".$datas.",`tb_data_pembimbing_tanggal`='".$tanggal."',`tb_pembimbing_id`=".$pembimbing.",`tb_data_umat_id`=".$itemUmatId.", `update_by` = '".$_SESSION['username']."', `update_date` = '".date('Y-m-d')."', `update_host` = '".get_client_ip()."' WHERE `tb_data_pembimbing_id`=".$id.";");
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

