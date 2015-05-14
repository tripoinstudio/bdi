

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {

    $data = json_decode($_GET['sending']);


    $code = $data->code;
    $name = $data->name;

    // $code = mysql_real_escape_string($_GET['code']);
    //   $name = mysql_real_escape_string($_GET['name']);


    $db = new Database();
    $db->connect();
//echo $insertparent;
    if ($_GET['action'] == 'save') {
        $db->insert('tb_group', array('tb_group_code' => '' . $code . '', 'tb_group_name' => '' . $name . '', 'status' => 1, 'company_code' => '' . $_SESSION['company_code'] . ''));
        $res = $db->getResult();
        foreach ($data->item as $items) {
            $idProduct = $items->idProduct;
            $status = $items->status;
            $action = $items->action;
            $group = $query1['tb_group_id'];
        }


//	print_r($res);
//	$query1=mysql_query("insert into tb_".$cekMenu['menu_function_link']." values('','$code','$name','1')");
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        $db->update('tb_group', array('tb_group_code' => "" . $code . "", 'tb_group_name' => "" . $name . ""), 'tb_group_id=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
        foreach ($data->item as $items) {
            $idItem = $items->idItem;
            $idProduct = $items->idLov;
            $status = $items->status;
            $action = $items->action;
            $group = $query1['tb_group_id'];
            if ($idItem == 0) {
                $db->insert('structure_menu', array('menu_function_id' => $idProduct, 'tb_group_id' => $id, 'structure_menu_action' => '' . $action . '', 'status' => $status)); // Table name, column names and values, WHERE conditions
                $res = $db->getResult();
            } else {
				 $structureOrder = $items->structureOrder;
                $db->update('structure_menu', array('menu_function_id' => $idProduct,'structure_menu_order' => $structureOrder, 'tb_group_id' => $id, 'structure_menu_action' => "" . $action . "", 'status' => $status), 'structure_menu_id=' . $idItem . ''); // Table name, column names and values, WHERE conditions
                $res = $db->getResult();
            }
        }
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
    }

    include "../../function/functionaction.php";
    ?>
    <?php

    $dblist = new Database();
    $dblist->connect();
    $dblist->select('tb_group', '*', NULL, 'status=1'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_query = $dblist->getResult();
//$list_query=mysql_query("select * from tb_".$cekMenu['menu_function_link']." where status=1");

    $length_list = count($list_query);
    ?>
    <?php

    include "../../function/contentmodul.html.php";
} else if ($_GET['action'] == 'lovname') {

    $db = new Database();
    $db->connect();
    $groupaas = $_GET['idGroup'];
    $db->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupaas); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    if ($list_users == null) {
        $menuid = 0;
    } else {
        $jumlus = count($list_users);
        $n = 0;
        $menuid = '';
        foreach ($list_users as $usera) {
            $n++;
            if ($n == $jumlus) {
                $comas = '';
            } else {
                $comas = ',';
            }
            $menuid .= '' . $usera['menu_function_id'] . '' . $comas;
        }
    }

    $db->select('menu_function', '*', NULL, 'menu_function_id not in (' . $menuid . ')'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasil = $db->getResult();
    $juml = count($hasil);
    $jsin = '[';
    $i = 0;

    foreach ($hasil as $hasila) {
        $i++;
        if ($i == $juml) {
            $coma = '';
        } else {
            $coma = ',';
        }
        //    echo $juml;

        $jsin .= '{"menu_function_id":"' . $hasila['menu_function_id'] . '","menu_function_name":"' . $hasila['menu_function_name'] . '","menu_function_link":"' . $hasila['menu_function_link'] . '","status":"' . $hasila['status'] . '","menu_function_level":"' . $hasila['menu_function_level'] . '","menu_function_parent":"' . $hasila['menu_function_parent'] . '","company_code":"' . $hasila['company_code'] . '","menu_function_order":"' . $hasila['menu_function_order'] . '"}' . $coma;
        // echo $jsin;
    }
    $jsin .= ']';

    // $hasis = count($hasil);
    // $hasis = $hasis + $hasil;
    /* if (i == $("#counter").val()) {
      coma = '';
      } else {
      coma = ',';
      } */
    // echo json_encode($hasil);

    echo $jsin;
 //    $hasis2 = json_encode($jsin);
  //   echo json_decode($hasis2);
} else {

    include "../../function/functionaction.php";
    ?>
    <?php

    $dblist = new Database();
    $dblist->connect();
    $dblist->select('tb_group', '*', NULL, 'company_code='.$idsettings.' and status=1'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_query = $dblist->getResult();
//$list_query=mysql_query("select * from tb_".$cekMenu['menu_function_link']." where status=1");

    $length_list = count($list_query);
    ?>
    <?php

    include "../../function/contentmodul.html.php";
}
//include "../".$cekMenu['menu_function_link']."/".$cekMenu['menu_function_link'].".html.php";
?>

