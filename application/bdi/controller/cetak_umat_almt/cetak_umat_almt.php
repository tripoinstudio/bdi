<?php
if ($_GET['action'] == 'findumat') {
    $db = new Database();
    $db->connect();
  //  $groupaas = $_GET['idGroup'];
  $alamat = $_GET['alamat'];
  $notlp = $_GET['notlp'];

	  $db->select('tb_data_umat', '*', NULL, "`tb_data_umat_alamat_tinggal` like '%".$alamat."%' and `tb_data_umat_no_tlp` like '%".$notlp."%'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
  
    
    $list_users = $db->getResult();
    echo json_encode($list_users);
} 
