<?php
if ($_GET['action'] == 'lovdaerah') {
    $db = new Database();
    $db->connect();
  //  $groupaas = $_GET['idGroup'];
  $type = $_GET['content'];
	  $db->select('tb_province', 'tb_province_id as tb_data_id,tb_province_name as tb_data_name', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
  
    
    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'lovsearchdaerah') {
    $db = new Database();
    $db->connect();
    $id = $_GET['id'];
    $db->select('tb_sentra', 'tb_sentra_id as tb_data_id,tb_sentra_name as tb_data_name', NULL, 'tb_sentra_province_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    
	$list_users = $db->getResult();
    echo json_encode($list_users);
}
