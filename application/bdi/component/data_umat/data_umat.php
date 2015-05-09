

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    // 
    
    //DATA KEUMATAN
    $nama_sekarang = $_GET['nama_sekarang'];
    $nama_panggilan = $_GET['nama_panggilan'];
    $place_of_birth = $_GET['place_of_birth'];
    $birth_date = $_GET['birth_date'];
    $gender = $_GET['gender'];
    $country = $_GET['country'];
    $job = $_GET['job'];
    $no_iden = $_GET['no_iden'];
    $alamat_ktp = $_GET['alamat_ktp'];
    $alamat_tinggal = $_GET['alamat_tinggal'];
    $telp_rumah = $_GET['telp_rumah'];
    $no_handphone = $_GET['no_handphone'];
    $email = $_GET['email'];
    
   // DATA KEUMATAN
    $marriage_status = $_GET['marriage_status'];
    $upacarashosu = $_GET['upacarashosu'];
    $nichiren_shosu_year = $_GET['nichiren_shosu_year'];
    $nichiren_shosu_place = $_GET['nichiren_shosu_place'];
    $nichiren_shosu_leader = $_GET['nichiren_shosu_leader'];
    $gojukai_date = $_GET['gojukai_date'];
    $okataki_gohozon = $_GET['okataki_gohozon'];
    $omamori_gohozon = $_GET['omamori_gohozon'];
    $tokubetsu_gohozon = $_GET['tokubetsu_gohozon'];
    $kankai_date = $_GET['kankai_date'];
    $me_gohifu = $_GET['me_gohifu'];
    $t_tahun = $_GET['t_tahun'];
    $t_penyakit = $_GET['t_penyakit'];
    
    
    //DATA PEMBAGIAN DAERAH
     $lovsprovince = $_GET['lovsprovince'];
    $lovssentra = $_GET['lovssentra'];
    $lovsdistrik = $_GET['lovsdistrik'];
    $lovscetya = $_GET['lovscetya'];
    $lovsdharmasala = $_GET['lovsdharmasala'];
    
    
    //DATA KEAKTIFAN
    $dtng_ke = $_GET['dtng_ke'];
    $danaprmt = $_GET['danaprmt'];
    $tngjwb = $_GET['tngjwb'];
    
    //DATA KELUARGA
    $lovNameTr = $_GET['lovNameTr'];
    $sendingKeluarga= json_decode($_GET['sendingKeluarga']);
    $lovNameTr2 = $_GET['lovNameTr2'];
    $nameKels = $_GET['nameKels'];
	$nameIdKels = $_GET['nameIdKels'];
    $nameHubs = $_GET['nameHubs'];

    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
        $manual= 'SELECT MAX(d.`tb_data_umat_code`) as code_umat FROM `tb_data_umat_pembagian` p INNER JOIN `tb_data_umat` d ON p.`tb_data_umat_id`=d.`tb_data_umat_id` where p.`tb_province_id`='.$lovsprovince;
        $list_cek_code = mysql_query($manual);
      //  $db->sql('SELECT MAX(d.`tb_data_umat_code`) FROM `tb_data_umat_pembagian` p INNER JOIN `tb_data_umat` d ON p.`tb_data_umat_id`=d.`tb_data_umat_id` where p.`tb_province_id`='.$lovsprovince); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
  //  $list_cek_code = $db->getResult();
//        foreach ($list_cek_code as $array_cek_code) {
//            $cekcodes = $array_cek_code['tb_data_umat_code'];
//        }
        while ($listlov = mysql_fetch_array($list_cek_code)) {
            
          $cek_cde = $listlov['code_umat'];
      }
        echo 'Data Sukses Disimpan';
        $toFuncCode = saveCodeUmats($cek_cde);
        if($toFuncCode !=null){
            $hasilcode = $toFuncCode; 
        } else {
            $hasilcode = '00001';
        }
        //HUBUNGAN KELUARGA PERTAMA
        $db->insert('tb_family_relationship', array('tb_data_umat_id' => $lovNameTr, 'tb_family_relationship_type' => 1));  // Table name, column names and respective values
        $res = $db->getResult();
        $idkeluarga1 = $res[0];
        
        $db->insert('tb_family_relationship', array('tb_data_umat_id' => $lovNameTr2, 'tb_family_relationship_type' => 2));  // Table name, column names and respective values
        $res2 = $db->getResult();
        $idkeluarga2 = $res2[0];
        
        $db->insert('tb_data_umat', array('tb_data_umat_alamat_ktp' => $alamat_ktp,'tb_data_umat_alamat_tinggal' => $alamat_tinggal,'tb_data_umat_no_tlp' => $telp_rumah,'tb_data_umat_code' => $hasilcode,'tb_data_umat_nama_ktp' => $nama_sekarang, 'tb_data_umat_nama_panggilan' => $nama_panggilan, 'tb_data_umat_pekerjaan' => $job, 'tb_data_umat_tempat' => $place_of_birth, 'tb_data_umat_tgl_lahir' => $birth_date, 'tb_data_umat_kewarganegaraan' => $country, 'tb_data_umat_gender' => $gender, 'tb_data_umat_no_id' => $no_iden, 'tb_data_umat_no_hp' => $no_handphone, 'tb_data_umat_email' => $email, 'tb_data_umat_keaktifan' => $dtng_ke, 'tb_data_umat_dana_goku' => $danaprmt, 'tb_data_umat_tanggung_jawab' => $tngjwb, 'tb_data_umat_hub1' => $idkeluarga1, 'tb_data_umat_hub2' => $idkeluarga2));  // Table name, column names and respective values
        $res3 = $db->getResult();
        $id_data_umat = $res3[0];
        
        $db->insert('tb_data_keumatan', array('tb_data_keumatan_marriage_status' => $marriage_status, 'tb_data_keumatan_nichiren_upacara' => $upacarashosu, 'tb_data_keumatan_nichiren_tahun' => $nichiren_shosu_year, 'tb_data_keumatan_nichiren_tempat' => $nichiren_shosu_place, 'tb_data_keumatan_nichiren_pemimpin' => $nichiren_shosu_leader, 'tb_data_keumatan_gojukai' => $gojukai_date, 'tb_data_keumatan_gohonzon_okatagi' => $okataki_gohozon, 'tb_data_keumatan_gohonzon_omamori' => $omamori_gohozon, 'tb_data_keumatan_gohonzon_tokubetsu' => $tokubetsu_gohozon, 'tb_data_keumatan_kankai' => $kankai_date, 'tb_data_keumatan_gohifu' => $me_gohifu, 'tb_data_keumatan_gohifu_tahun' => $t_tahun, 'tb_data_keumatan_gohifu_penyakit' => $t_penyakit, 'tb_data_umat_id' => $id_data_umat));  // Table name, column names and respective values
        $res4 = $db->getResult();
        $idaddress1 = $res4[0];
        
        
        
        $db->insert('tb_data_umat_pembagian', array('tb_data_umat_id' => $id_data_umat, 'tb_province_id' => $lovsprovince, 'tb_sentra_id' => $lovssentra, 'tb_distrik_id' => $lovsdistrik, 'tb_cetya_id' => $lovscetya, 'tb_dharmasala_id' => $lovsdharmasala));  // Table name, column names and respective values
        $res5 = $db->getResult();
        $idaddress2 = $res5[0];
        
        foreach ($sendingKeluarga->listitemkel as $itemskel) {
			$nameIdKel = $itemskel->nameIdKel;
            $nameKel = $itemskel->nameKel;
            $nameHub = $itemskel->nameHub;
       //     $group = $query1['tb_group_id'];
            $db->insert('tb_relationship', array('tb_relationship_relation_code' => $nameHub, 'tb_relationship_name' => $nameKel, 'tb_relationship_relationship_id' => $idkeluarga1));  // Table name, column names and respective values
        $relationship = $db->getResult();
        }
		$db->insert('tb_relationship', array('tb_relationship_relation_code' => $nameHubs, 'tb_relationship_name' => $nameKels, 'tb_relationship_relationship_id' => $idkeluarga2));  // Table name, column names and respective values
        $relationship2 = $db->getResult();
		saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
      //  include "../../function/saveautomatic.php";
//        echo $datas . '<br/>';
//        echo $values . '<br/>';
//        echo $idaddress1 . '<br/>';
//        echo $idaddress2 . '<br/>';
//
//        $dbs = new Database();
//        $dbs->connect();
//        $dbs->sql("INSERT INTO `tb_personal_identity` (" . $datas . ",`tb_personal_identity_ktp_address`,`tb_personal_identity_current_address`,`tb_personal_identity_gender`,`tb_personal_identity_is_nichiren_shosu`,`tb_personal_identity_marital_status`
//                )VALUES (" . $values . ",$idaddress1, $idaddress2,$gender,$mrstatus,$upacarashosu
//                );");
////                ,'".$birth_date."','".$gojukai_date."','".$gohozon_accept_date."','".$kankai_date,$shosu_year."'
////                 ,`tb_personal_identity_birth_date`,`tb_personal_identity_gojukai_date`,`tb_personal_identity_gohozon_accept_date`,`tb_personal_identity_kankai_date`,`tb_personal_identity_nichiren_shosu_year`
//
//        $res3 = $dbs->getResult();
    } else




    if ($_GET['action'] == 'update') {

   //     $id = $_GET['id'];
        $code_umat = $_GET['umat_code'];
        $code_umat_id = $_GET['umat_code_id'];
		$id_name1 = $_GET['id_name1'];
		$id_name2 = $_GET['id_name2'];

		$db->update('tb_data_umat', array('tb_data_umat_code' =>  "" .$code_umat. "",'tb_data_umat_alamat_ktp' =>  "" .$alamat_ktp. "",'tb_data_umat_alamat_tinggal' =>  "" .$alamat_tinggal. "",'tb_data_umat_no_tlp' =>  "".$telp_rumah. "",'tb_data_umat_nama_ktp' =>  "" .$nama_sekarang. "", 'tb_data_umat_nama_panggilan' =>  "" .$nama_panggilan. "", 'tb_data_umat_pekerjaan' =>  "" .$job. "", 'tb_data_umat_tempat' =>  "" .$place_of_birth. "", 'tb_data_umat_tgl_lahir' =>  "" .$birth_date. "", 'tb_data_umat_kewarganegaraan' =>  "" .$country. "", 'tb_data_umat_gender' =>  "" .$gender. "", 'tb_data_umat_no_id' =>  "" .$no_iden. "", 'tb_data_umat_no_hp' =>  "" .$no_handphone. "", 'tb_data_umat_email' =>  "" .$email. "", 'tb_data_umat_keaktifan' =>  "" .$dtng_ke. "", 'tb_data_umat_dana_goku' =>  "" .$danaprmt. "", 'tb_data_umat_tanggung_jawab' => "".$tngjwb. "", 'tb_data_umat_hub1' =>  "" .$id_name1. "", 'tb_data_umat_hub2' =>  "" .$id_name2. ""), 'tb_data_umat_id=' . $code_umat_id . '');  // Table name, column names and respective values
        $res = $db->getResult();
		
		 $db->update('tb_data_keumatan', array('tb_data_keumatan_marriage_status' => $marriage_status, 'tb_data_keumatan_nichiren_upacara' => $upacarashosu, 'tb_data_keumatan_nichiren_tahun' => $nichiren_shosu_year, 'tb_data_keumatan_nichiren_tempat' => $nichiren_shosu_place, 'tb_data_keumatan_nichiren_pemimpin' => $nichiren_shosu_leader, 'tb_data_keumatan_gojukai' => $gojukai_date, 'tb_data_keumatan_gohonzon_okatagi' => $okataki_gohozon, 'tb_data_keumatan_gohonzon_omamori' => $omamori_gohozon, 'tb_data_keumatan_gohonzon_tokubetsu' => $tokubetsu_gohozon, 'tb_data_keumatan_kankai' => $kankai_date, 'tb_data_keumatan_gohifu' => $me_gohifu, 'tb_data_keumatan_gohifu_tahun' => $t_tahun, 'tb_data_keumatan_gohifu_penyakit' => $t_penyakit), 'tb_data_umat_id=' . $code_umat_id . '');  // Table name, column names and respective values
        $res2 = $db->getResult();
        
		$db->update('tb_data_umat_pembagian', array('tb_province_id' => $lovsprovince, 'tb_sentra_id' => $lovssentra, 'tb_distrik_id' => $lovsdistrik, 'tb_cetya_id' => $lovscetya, 'tb_dharmasala_id' => $lovsdharmasala), 'tb_data_umat_id=' . $code_umat_id . '');  // Table name, column names and respective values
        $res3 = $db->getResult();
		
		$db->update('tb_family_relationship', array('tb_data_umat_id' => $lovNameTr, 'tb_family_relationship_type' => 1), 'tb_family_relationship_id=' . $id_name1 . '');  // Table name, column names and respective values
        $res4 = $db->getResult();
        
        $db->update('tb_family_relationship', array('tb_data_umat_id' => $lovNameTr2, 'tb_family_relationship_type' => 2), 'tb_family_relationship_id=' . $id_name2 . '');  // Table name, column names and respective values
        $res5 = $db->getResult();
		
		foreach ($sendingKeluarga->listitemkel as $itemskel) {
			$nameIdKel = $itemskel->nameIdKel;
            $nameKel = $itemskel->nameKel;
            $nameHub = $itemskel->nameHub;
       //     $group = $query1['tb_group_id'];
	   if($nameIdKel == 0){
		   $db->insert('tb_relationship', array('tb_relationship_relation_code' => $nameHub, 'tb_relationship_name' => $nameKel, 'tb_relationship_relationship_id' => $id_name1));  // Table name, column names and respective values
        $relationship = $db->getResult();
	   } else {
		   $db->update('tb_relationship', array('tb_relationship_relation_code' => $nameHub, 'tb_relationship_name' => $nameKel, 'tb_relationship_relationship_id' => $id_name1), 'tb_relationship_id=' . $nameIdKel . '');  // Table name, column names and respective values
        $relationship = $db->getResult();
	   }
            
        }
		$db->update('tb_relationship', array('tb_relationship_relation_code' => $nameHubs, 'tb_relationship_name' => $nameKels, 'tb_relationship_relationship_id' => $id_name2), 'tb_relationship_id=' . $nameIdKels . '');  // Table name, column names and respective values
        $relationship2 = $db->getResult();
		saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
     }
} else {
	
	if ($_GET['action'] == 'deletemanual') {

    $id = $_GET['id'];
$dblistdata = new Database();
$dblistdata->connect();
$dblistdata->select('tb_data_umat', '*', NULL, 'tb_data_umat_id='.$id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_data_qu = $dblistdata->getResult();
 foreach ($list_data_qu as $array_list_qu) {
	 $data_umat_hub1 = $array_list_qu['tb_data_umat_hub1'];
	 $data_umat_hub2 = $array_list_qu['tb_data_umat_hub2'];
 }
		
        $query1 = mysql_query("delete from tb_data_umat where tb_data_umat_id='$id'");
		$query2 = mysql_query("delete from tb_data_keumatan where tb_data_umat_id='$id'");
		$query3 = mysql_query("delete from tb_data_umat_pembagian where tb_data_umat_id='$id'");
		
		$query6 = mysql_query("delete from tb_relationship where tb_relationship_relationship_id='$data_umat_hub1'");
		$query7 = mysql_query("delete from tb_relationship where tb_relationship_relationship_id='$data_umat_hub2'");
		$query4 = mysql_query("delete from tb_family_relationship where tb_family_relationship_id='$data_umat_hub1'");
		$query5 = mysql_query("delete from tb_family_relationship where tb_family_relationship_id='$data_umat_hub2'");
    
    saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);

    // $query1 = mysql_query("delete from tb_" . $cekMenu['menu_function_link'] . " where tb_" . $cekMenu['menu_function_link'] . "_id='$id'");
}

include "../../function/functionaction.php";
?>
<?php

//if($_GET['action'] == 'searchs'){
//    if($_GET['searchtype']=='code'){
//        $texts = 'tb_country_code';
//    } else if($_GET['searchtype']=='name'){
//        $texts = 'tb_country_name';
//    } else {
//        $texts = '';
//    }
//$parentuser = $texts." like '%".$_GET['searchfield']."%' and status=1";

$dblist = new Database();
$dblist->connect();
$dblist->select('tb_data_umat', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
?>
<?php

$exportpdf = "exportPdf('pdf','pdf-country','');"; //TYPE EXPORT, FILE NAME EXPORT, PARAMETER ex  : 'pdf','pdf-country','&id=id'
$exportexcel = "exportExcel('excel','excel-country','');";

include "../../function/contentmodul.html.php";

} 

?>

