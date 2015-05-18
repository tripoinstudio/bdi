

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    include "../../function/saveautomatic.php";

    $countryid = $_GET['country'];
    $db = new Database();
    $db->connect();
    if ($_GET['action'] == 'save') {
        $db->sql("INSERT INTO `tb_pembimbing` (".$datas.")VALUES (".$values.")");
		$res = $db->getResult();
		saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];        
        $db->sql("UPDATE `tb_pembimbing` SET ".$datas." WHERE `tb_pembimbing_id` = ".$id.";");
        $res = $db->getResult();
		saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
    }
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

