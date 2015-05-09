

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
				 $db->insert('tb_dharmasala', array('created_date' => date('Y-m-d'),'created_by' => $_SESSION['user_id'],'tb_dharmasala_name' => $name, 'tb_dharmasala_cetya_id' => $daerah));  // Table name, column names and \
        	 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
			} else {
			$db->update('tb_dharmasala', array('update_date' => date('Y-m-d'),'update_by' => $_SESSION['user_id'],'tb_dharmasala_name' => $name, 'tb_dharmasala_cetya_id' => $daerah),'tb_dharmasala_id=' . $id . '');
			 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
			}
			$results = $db->getResult();
          
        }
	} else if ($_GET['action'] == 'delitem') {
		$idl = $_GET['id'];
		 $query1 = mysql_query("delete from tb_dharmasala where tb_dharmasala_id='$idl'");
		 saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
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

