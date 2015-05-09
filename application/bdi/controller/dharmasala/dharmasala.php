<?php
if ($_GET['action'] == 'lovdaerah') {
    $db = new Database();
    $db->connect();
  //  $groupaas = $_GET['idGroup'];
  $type = $_GET['content'];

	$db->select('tb_cetya', 'tb_cetya_id as tb_data_id,tb_cetya_name as tb_data_name', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions

    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'lovsearchdaerah') {
    $db = new Database();
    $db->connect();
    $id = $_GET['id'];
	
	$db->select('tb_dharmasala', 'tb_dharmasala_id as tb_data_id,tb_dharmasala_name as tb_data_name', NULL, 'tb_dharmasala_cetya_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
	
	$list_users = $db->getResult();
    echo json_encode($list_users);
}
