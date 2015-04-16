<?php

if ($_GET['content'] == 'personal_identity') {
    $dblist = new Database();
    $dblist->connect();
    $dblist->select('tb_personal_identity', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_query = $dblist->getResult();
    //  echo 'tes';
    echo json_encode($list_query);
} else if ($_GET['content'] == 'province') {
    $dblist = new Database();
    $dblist->connect();
//    $dblist->select('tb_province', '*', NULL, 'tb_province_id='.$_GET['id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
//    $list_query = $dblist->getResult();
//    foreach ($list_query as $array_list_query) {
//    $code = array('code'=>$array_list_query['tb_province_code']);
//    }
    $lovquery = mysql_query('SELECT tb_personal_identity_code
FROM tb_personal_identity p
JOIN tb_address s ON p.tb_personal_identity_ktp_address = s.tb_address_id
JOIN tb_province k ON s.tb_province_id = k.tb_province_id
WHERE s.tb_province_id =' . $_GET['id'].' order by p.tb_personal_identity_code');
//    $dblist->sql(''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
   // $list_query = $dblist->getResult();
    $code;
    while ($listlov = mysql_fetch_array($lovquery)) {
//        $code = $array_list_query['tb_personal_identity_ktp_address']['tb_province_id'];
        $code = $listlov['tb_personal_identity_code'];
    }
    echo $code;
}