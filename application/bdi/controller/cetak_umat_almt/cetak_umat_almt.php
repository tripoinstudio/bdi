<?php
if ($_GET['action'] == 'findumat') {
   /* $db = new Database();
    $db->connect();
  //  $groupaas = $_GET['idGroup'];
  $alamat = $_GET['alamat'];
  $notlp = $_GET['notlp'];

	  $db->select('tb_data_umat', '*', NULL, "`tb_data_umat_alamat_tinggal` like '%".$alamat."%' and `tb_data_umat_no_tlp` like '%".$notlp."%'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
  
    
    $list_users = $db->getResult();
    echo json_encode($list_users);*/
	
	$db = new Database();
    $db->connect();
  //  $groupaas = $_GET['idGroup'];
  $alamat = $_GET['alamat'];
  $notlp = $_GET['notlp'];

	//  $db->select('tb_data_umat', '*', NULL, "`tb_data_umat_alamat_tinggal` like '%".$alamat."%' and `tb_data_umat_no_tlp` like '%".$notlp."%'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
	$db->sql("select d.tb_data_umat_id,d.tb_data_umat_nama_ktp,p.tb_province_id,d.tb_data_umat_alamat_tinggal,d.tb_data_umat_no_tlp,d.tb_data_umat_code from `tb_data_umat_pembagian` p INNER JOIN `tb_data_umat` d ON p.`tb_data_umat_id`=d.`tb_data_umat_id` where d.`tb_data_umat_alamat_tinggal` like '%".$alamat."%' and d.`tb_data_umat_no_tlp` like '%".$notlp."%'");
  
	 $list_query = $db->getResult();
	 
$jsonsend = '[';
            $no = 1;
			$coma = '';
            foreach ($list_query as $array_list_query) {
				if($no == count($list_query)){
					$coma = '';
				} else {
					$coma = ',';
				}
				$provinceid = idListViewTarget($array_list_query['tb_province_id'], "province", "tb_province_code");
				$codeUmat = autoCodeUmat($provinceid, $array_list_query['tb_data_umat_nama_ktp'], $array_list_query['tb_data_umat_code']);
				$jsonsend .= '{';
				$jsonsend .= '"id":"'.$array_list_query['tb_data_umat_id'].'",';
				$jsonsend .= '"code":"'.$codeUmat.'",';
				$jsonsend .= '"nama":"'.$array_list_query['tb_data_umat_nama_ktp'].'",';
				$jsonsend .= '"alt_ting":"'.$array_list_query['tb_data_umat_alamat_tinggal'].'",';
				$jsonsend .= '"no_telp":"'.$array_list_query['tb_data_umat_no_tlp'].'",';
				$jsonsend .= '"province":"'.$provinceid.'"';
				$jsonsend .= '}'.$coma;
				
			 $no++;	
			}
			$jsonsend .= ']';
                
    
  // $list_users = $db->getResult();
    echo $jsonsend;
} 
