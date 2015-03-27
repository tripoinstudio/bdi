<?php
require_once("class/mysql_crud.php");

include("configuration.php");
session_start();

$whereset = $_SESSION['company_code'];
$dbgrou = new Database();
$dbgrou->connect();
$dbgrou->select("tb_settings", "*", NULL, "tb_settings_code='" . $whereset . "'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_settings = $dbgrou->getResult();
foreach ($list_settings as $list_settings2) {
    $idsettings = $list_settings2['tb_settings_id'];
    $parentsta = "company_code=" . $idsettings . " AND status=1";
}
 //$parentsta = " status=1";
//$parentsta = "company_code='".$_SESSION['company_code']."' AND status=1";

if ($_GET['content'] == 'group') {
    include 'component/group/group.php';
} else if ($_GET['action'] == 'new') {
if($_GET['manual'] == 'true'){
    $manual = $_GET['parameter'];

} else {
    	$manual = "select * from tb_" . $_GET['lov'];

}

    $lovquery = mysql_query($manual);
    echo "<select name='lov" . $_GET['lov'] . "' id='lovs" . $_GET['lov'] . "' class='input-large m-wrap'> <option value='0'>Select ...</option>";
    while ($listlov = mysql_fetch_array($lovquery)) {
        echo "<option value=" . $listlov['tb_' . $_GET['lov'] . '_id'] . ">" . $listlov['tb_' . $_GET['lov'] . '_name'] . "</option>";
    }
    echo "</select>";
    echo'<span class="help-inline" name="namens[]" id="' . $_GET['lov'] . 'ns"></span>';
} else if ($_GET['action'] == 'edit') {
    if($_GET['manual'] == 'true'){
    $manual = $_GET['parameter'];

} else {
    	$manual = "select * from tb_" . $_GET['lov'];

}

    $lovquery = mysql_query($manual);
    echo "<select name='lov" . $_GET['lov'] . "' id='lovs" . $_GET['lov'] . "' class='input-large m-wrap' > <option value='0'>Select ...</option>";
    while ($listlov = mysql_fetch_array($lovquery)) {
        if ($_GET['idLov'] == $listlov['tb_' . $_GET['lov'] . '_id']) {
            echo "<option value='" . $listlov['tb_' . $_GET['lov'] . '_id'] . "' selected='selected'>" . $listlov['tb_' . $_GET['lov'] . '_name'] . "</option>";
        } else {
            echo "<option value=" . $listlov['tb_' . $_GET['lov'] . '_id'] . ">" . $listlov['tb_' . $_GET['lov'] . '_name'] . "</option>";
        }
    }
    echo "</select>";
        echo'<span class="help-inline" name="namens[]" id="' . $_GET['lov'] . 'ns"></span>';

} else if ($_GET['action'] == 'view') {
    $lovquery = mysql_query("select * from tb_" . $_GET['lov'] . " where tb_" . $_GET['lov'] . "_id=" . $_GET['idLov']);
    $lov = mysql_fetch_array($lovquery);
    echo "<input type='text' id='lovs" . $_GET['lov'] . "' value='" . $lov['tb_' . $_GET['lov'] . '_name'] . "' class='input-large' disabled />";
} else if ($_GET['action'] == 'product') {
    $db = new Database();
    $db->connect();
    $db->select('tb_' . $_GET['action'] . '', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasil = $db->getResult();
    echo json_encode($hasil);
} else if ($_GET['action'] == 'viewterm') {
    $types = $_GET['type'];
    $stType = '';
    if ($types == 1) {
        $stType = 'tb_termpiutang';
    } else if ($types == 2) {
        $stType = 'tb_termhutang';
    }
    $id = $_GET['id'];
    $db = new Database();
    $db->connect();
    if ($types == 1) {
        $db->select($stType, '*', NULL, 'tb_invoice_id=' . $id);
    } else if ($types == 2) {
        $db->select($stType, '*', NULL, 'tb_purchase_id=' . $id);
    }
    // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasil = $db->getResult();
    echo json_encode($hasil);
} else if ($_GET['action'] == 'bayarterm') {
    $id = $_GET['id'];
    $types = $_GET['type'];
    $stType = '';
    if ($types == 1) {
        $stType = 'tb_termpiutang';
    } else if ($types == 2) {
        $stType = 'tb_termhutang';
    }
    $db = new Database();
    $db->connect();
    $db->select($stType, '*', NULL, $stType . '_id=' . $id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasil = $db->getResult();
    echo json_encode($hasil);
} else if ($_GET['action'] == 'listproduct') {
    $ip = 'http://10.10.130.222:8080/inventoryapi/inventory/products';
    // setting CURL
    $data = curl_init();
    curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($data, CURLOPT_URL, $ip);

    // menjalankan CURL untuk membaca isi file
    $hasil = curl_exec($data);
    curl_close($data);

    echo json_encode($hasil);
    //  var_dump(json_decode($result));
} else if ($_GET['action'] == 'savep') {
    $url = "http://10.10.130.222:8080/inventoryapi/inventory/products/save";
//$content = json_encode(array('code'=>'"'.$_GET['code'].'"','name'=>'"'.$_GET['name'].'"'));
    $content = 'name=' . $_GET['name'] . '&code=' . $_GET['code'];
    /*
      $curl = curl_init($url);
      curl_setopt($curl, CURLOPT_HEADER, false);
      curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
      curl_setopt($curl, CURLOPT_HTTPHEADER,
      array("Content-type: application/json"));
      curl_setopt($curl, CURLOPT_POST, true);
      curl_setopt($curl, CURLOPT_POSTFIELDS, $content);

      $json_response = curl_exec($curl);
     */

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $content);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

    $json_response = curl_exec($ch);
    $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);

    if ($status != 200) {
        die("Error: call to URL $url failed with status $status, response $json_response, curl_error " . curl_error($ch) . ", curl_errno " . curl_errno($ch));
    }


    curl_close($ch);

    $response = json_decode($json_response, true);
    echo json_encode($response);
}
?>
