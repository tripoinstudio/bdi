

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update' || $_GET['action'] == 'delitem' ) {
    // echo "data=".$_GET['data'];
    $daerah = $_GET['daerah'];
	$sending= json_decode($_GET['sending']);
    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
		foreach ($sending->listitem as $items) {
			$id = $items->id;
            $name = $items->name;
			if($id == 0){
				 $db->insert('tb_cetya', array('created_date' => date('Y-m-d'),'created_by' => $_SESSION['user_id'],'tb_cetya_name' => $name, 'tb_distrik_id' => $daerah));  // Table name, column names and \
        	 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
			} else {
			$db->update('tb_cetya', array('update_date' => date('Y-m-d'),'update_by' => $_SESSION['user_id'],'tb_cetya_name' => $name, 'tb_distrik_id' => $daerah),'tb_cetya_id=' . $id . '');
			 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
			}
			$results = $db->getResult();
          
        }
	} else if ($_GET['action'] == 'delitem') {
		$idl = $_GET['id'];
		 $query1 = mysql_query("delete from tb_cetya where tb_cetya_id='$idl'");
		 $query2 = mysql_query("delete from tb_dharmasala where tb_dharmasala_cetya_id='$idl'");
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

