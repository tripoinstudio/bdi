<?php
if ($_GET['action'] == 'list') {
    $db = new Database();
    $db->connect();	
	$db->select('tb_pembimbing', 'tb_pembimbing_id as tb_data_id,tb_pembimbing_name as tb_data_name', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
	$list_users = $db->getResult();
    echo json_encode($list_users);
}
