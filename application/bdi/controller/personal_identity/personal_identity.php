<?php

if ($_GET['action'] == 'lovname') {
    $db = new Database();
    $db->connect();
    $groupaas = $_GET['idGroup'];
    $db->select('tb_personal_identity', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    echo json_encode($list_users);
}