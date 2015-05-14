<?php
session_start();
if (!isset($_SESSION['username'])) {
    header('location:../../index.php');
    //	$cekSession = 1;
}

//$insertparent = array('status'=>1,'company_code'=>''.$_SESSION['company_code'].'');
//$insertparent = "'status'=>1,'company_code'=>'".$_SESSION['company_code']."'";
$resultMenu = $_GET['content'];
if ($resultMenu != null) {
    require_once("../../class/mysql_crud.php");
    require_once("../../configuration.php");
    require_once("../../function/function.php");
    require_once("../../function/component.php");
    require_once("../../properties/ind_personal_identity.php");
}

$cekMenuQuery = mysql_query("select * from menu_function where menu_function_link='" . $resultMenu . "'");
if ($cekMenuQuery === FALSE) {
    die(mysql_error()); // TODO: better error handling
}

$cekMenu = mysql_fetch_array($cekMenuQuery);
$menuListUmat = '';

	if($_GET['namemenu'] == null){
		
		$menuListUmat = $cekMenu['menu_function_name'];
	}  else {
		$menuListUmat = 'List Data Umat';
	}
if ($_SESSION['timeout'] + (30*60)< time()) {
		 logout();
		echo "<script>setTimeout(\"location.href = '.';\",0);</script>";
     // session timed out
  } else {
	  $_SESSION['timeout'] = time();
     // session ok
  }

$contenty = $_GET['content'];

$ipconfigs = 'http://10.10.130.222:8080';

$whereset = $_SESSION['company_code'];
$dbgrou = new Database();
$dbgrou->connect();
$dbgrou->select("tb_settings", "*", NULL, "tb_settings_code='" . $whereset . "'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_settings = $dbgrou->getResult();
foreach ($list_settings as $list_settings2) {
    $idsettings = $list_settings2['tb_settings_id'];
    $parentsta = "company_code=" . $idsettings . " AND status=1";
}


//$dbgrou->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupa);
$dbgrou->sql("SELECT * FROM `structure_menu` s INNER JOIN `menu_function` m ON s.`menu_function_id`=m.`menu_function_id`  WHERE s.`tb_group_id`='" . $_SESSION['id_group'] . "' and m.`menu_function_link`='" . $contenty . "'");
$cekmen = $dbgrou->getResult();

foreach ($cekmen as $cekmens) {
    // $noi += 1;
    // $menuid = $cekmens['menu_function_id'];
    $cekaction = explode(',', $cekmens['structure_menu_action']);
	
}


if ($_GET['action'] == 'search') {
    include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . ".php";
} else {
    ?>



    <div class="row-fluid" >
        <div class="box paint color_26">
            <div class="title">
                <h4> <span><?= $menuListUmat; ?> <small>BDI</small></span> </h4>
            </div>



            <?php
            if ($cekMenu['menu_function_link'] == 'group') {
                include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . ".php";
            } else if ($_SESSION['backend'] == 1) {

                include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . ".php";
            } else if ($_SESSION['backend'] == 2) {
                include "../" . $cekMenu['menu_function_link'] . "-service/" . $cekMenu['menu_function_link'] . ".php";
            }
            ?>
        </div>

    </div>
    <input type="hidden" id="ipConfig" value="<?php echo $_SERVER["REQUEST_URI"]; ?>" />
<?php } ?>
