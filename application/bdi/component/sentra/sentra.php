

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update' || $_GET['action'] == 'delitem') {
    // echo "data=".$_GET['data'];
 //   include "../../function/saveautomatic.php";

    $daerah = $_GET['daerah'];
	$sending= json_decode($_GET['sending']);
    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
		foreach ($sending->listitem as $items) {
			$id = $items->id;
            $name = $items->name;
			if($id == 0){
				 $db->insert('tb_sentra', array('created_date' => date('Y-m-d'),'created_by' => $_SESSION['user_id'],'tb_sentra_name' => $name, 'tb_sentra_province_id' => $daerah));  // Table name, column names and \
        	saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
			} else {
			$db->update('tb_sentra', array('update_date' => date('Y-m-d'),'update_by' => $_SESSION['user_id'],'tb_sentra_name' => $name, 'tb_sentra_province_id' => $daerah),'tb_sentra_id=' . $id . '');
			saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
			}
			$results = $db->getResult();
			
           
        }
	} else if ($_GET['action'] == 'delitem') {
		$idl = $_GET['id'];
		$dblistdata = new Database();
$dblistdata->connect();
$dblistdata->select('tb_distrik', '*', NULL, 'tb_sentra_id='.$idl); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_data_qu = $dblistdata->getResult();
 foreach ($list_data_qu as $array_list_qu) {
	 $id_distrik = $array_list_qu['tb_distrik_id'];
	 
	 $dblistdata->select('tb_cetya', '*', NULL, 'tb_distrik_id='.$id_distrik); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_datas_qu = $dblistdata->getResult();
 foreach ($list_datas_qu as $array_lists_qu) {
	  $id_cetya = $array_lists_qu['tb_cetya_id'];
	 $query1 = mysql_query("delete from tb_dharmasala where tb_dharmasala_cetya_id='$id_cetya'");
	 
 }
	 
	 $query2 = mysql_query("delete from tb_cetya where tb_distrik_id='$id_distrik'");
	// $data_umat_hub2 = $array_list_qu['tb_data_umat_hub2'];
 }
 $query3 = mysql_query("delete from tb_distrik where tb_sentra_id='$idl'");
		 $query4 = mysql_query("delete from tb_sentra where tb_sentra_id='$idl'");
		 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
	}
}

include "../../function/functionaction.php";
?>
<?php

?>
<?php

$exportpdf = "exportPdf('pdf','pdf-cetya','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-cetya','&id=id'
$exportexcel = "exportExcel('excel','excel-cetya','');";

include "../../function/contentmodul.html.php";
?>

