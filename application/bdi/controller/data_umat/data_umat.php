<?php

if ($_GET['action'] == 'lovname') {
    $db = new Database();
    $db->connect();
  //  $groupaas = $_GET['idGroup'];
    $db->select('tb_data_umat', 'tb_data_umat_id,tb_data_umat_nama_ktp', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'sentralov') {
    $db = new Database();
    $db->connect();
    $id = $_GET['id'];
    $db->select('tb_sentra', '*', NULL, 'tb_sentra_province_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'distriklov') {
    $db = new Database();
    $db->connect();
    $id = $_GET['id'];
    $db->select('tb_distrik', '*', NULL, 'tb_sentra_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'cetyalov') {
    $db = new Database();
    $db->connect();
    $id = $_GET['id'];
    $db->select('tb_cetya', '*', NULL, 'tb_distrik_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'dharmasalalov') {
    $db = new Database();
    $db->connect();
    $id = $_GET['id'];
    $db->select('tb_dharmasala', '*', NULL, 'tb_dharmasala_cetya_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'delitemkel') {
    $id = $_GET['id'];
    $querydel = mysql_query("delete from tb_relationship where tb_relationship_id='$id'");
}