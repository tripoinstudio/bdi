

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
//    include "../../function/saveautomatic.php";

    $db = new Database();
    $db->connect();
	$sending= json_decode($_GET['data']);
    if ($_GET['action'] == 'save') {
        foreach ($sending->items as $items) {
			$idItem = $items->idItem;
            $name = $items->name;
			if($idItem == 0){
				$db->insert('tb_pembimbing', array('tb_pembimbing_name' => $name));  // Table name, column names and respective values
			} else {
				$db->update('tb_pembimbing', array('tb_pembimbing_name' => $name),'tb_pembimbing_id='.$idItem);  // Table name, column names and respective values
			}
		
        $relationship2 = $db->getResult();
		saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
		 }
		
    }
}
if ($_GET['action'] == 'delete') {
	$id = $_GET['id'];
	$db = new Database();
    $db->connect();
	$db->sql('DELETE FROM tb_pembimbing where tb_pembimbing_id='.$id);
	$relationship2 = $db->getResult();
	saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
}

include "../../function/functionaction.php";
?>
<?php
$dblist = new Database();
$dblist->connect();
$dblist->select('tb_pembimbing', '*', NULL, '');
$list_query = $dblist->getResult();

$length_list = count($list_query);

?>
<?php

include "../../function/contentmodul.html.php";
?>

