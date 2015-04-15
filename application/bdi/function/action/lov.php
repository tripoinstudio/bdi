<?php
if($_GET['content']=='personal_identity'){
    $dblist = new Database();
    $dblist->connect();
    $dblist->select('tb_personal_identity', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_query = $dblist->getResult();
  //  echo 'tes';
    echo json_encode($list_query);
}