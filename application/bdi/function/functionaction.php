
<?php

if ($_GET['action'] == 'deleteAll') {

    $id = $_GET['id'];
    if ($_GET['content'] != 'user'){
    $query1 = mysql_query("delete from tb_" . $cekMenu['menu_function_link'] . " where tb_" . $cekMenu['menu_function_link'] . "_id IN ( ".$_GET['idList']." )");
    } else {
        $query1 = mysql_query("delete from tb_" . $cekMenu['menu_function_link'] . " where " . $cekMenu['menu_function_link'] . "_id IN ( ".$_GET['idList']." )");
    }
} else if ($_GET['action'] == 'delete') {

    $id = $_GET['id'];
    
    if ($_GET['content'] == 'user'){
     $query1 = mysql_query("delete from tb_" . $cekMenu['menu_function_link'] . " where " . $cekMenu['menu_function_link'] . "_id='$id'");
    } else {
    $query1 = mysql_query("delete from tb_" . $cekMenu['menu_function_link'] . " where tb_" . $cekMenu['menu_function_link'] . "_id='$id'");
    }
   // $query1 = mysql_query("delete from tb_" . $cekMenu['menu_function_link'] . " where tb_" . $cekMenu['menu_function_link'] . "_id='$id'");
} else if (($_GET['content'] == 'user' && $_GET['action'] == 'view') || ($_GET['content'] == 'user' && $_GET['action'] == 'edit')) {

    $id = $_GET['id'];
//echo $id;
    $result2 = mysql_query("select * from tb_" . $cekMenu['menu_function_link'] . " where " . $cekMenu['menu_function_link'] . "_id=" . $id);
    $query1 = mysql_fetch_array($result2);
} else if ($_GET['action'] == 'view' || $_GET['action'] == 'edit') {

    $id = $_GET['id'];
//echo $id;
    $result2 = mysql_query("select * from tb_" . $cekMenu['menu_function_link'] . " where tb_" . $cekMenu['menu_function_link'] . "_id=" . $id);
    $query1 = mysql_fetch_array($result2);
}
?>