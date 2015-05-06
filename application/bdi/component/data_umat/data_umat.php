

<?php

if ($_GET['action'] == 'save' || $_GET['action'] == 'update') {
    // echo "data=".$_GET['data'];
    // 
    
    //DATA KEUMATAN
    $nama_sekarang = $_GET['nama_sekarang'];
   // $nama_
     
//ADDRESS 1
    $no1 = $_GET['no1'];
    $jalan1 = $_GET['jalan1'];
    $mobile1 = $_GET['mobile1'];
    $kelurahan1 = $_GET['kelurahan1'];
    $kecamatan1 = $_GET['kecamatan1'];
    $city1 = $_GET['city1'];
    $province1 = $_GET['province1'];

    //ADDRESS 2
    $no2 = $_GET['no2'];
    $jalan2 = $_GET['jalan2'];
    $mobile2 = $_GET['mobile2'];
    $kelurahan2 = $_GET['kelurahan2'];
    $kecamatan2 = $_GET['kecamatan2'];
    $city2 = $_GET['city2'];
    $province2 = $_GET['province2'];

    $gender = $_GET['gender'];
    $upacarashosu = $_GET['upacarashosu'];
    $mrstatus = $_GET['mrstatus'];

    $shosu_year = $_GET['shosu_year'];
    $birth_date = $_GET['birth_date'];
    $gojukai_date = $_GET['gojukai_date'];
    $gohozon_accept_date = $_GET['gohozon_accept_date'];
    $kankai_date = $_GET['kankai_date'];


    $idaddress1;
    $idaddress2;


    $db = new Database();
    $db->connect();

    if ($_GET['action'] == 'save') {
        
        $db->insert('tb_data_umat', array('tb_data_umat_nama_ktp' => $nama_sekarang, 'tb_address_street' => $jalan1, 'tb_address_mobile_number' => $mobile1, 'tb_address_district' => $kelurahan1, 'tb_address_sub_district' => $kecamatan1, 'tb_city_id' => $city1, 'tb_province_id' => $province1));  // Table name, column names and respective values
        $res = $db->getResult();
        $idaddress1 = $res[0];
        
        $db->insert('tb_address', array('tb_address_ktp' => $no1, 'tb_address_street' => $jalan1, 'tb_address_mobile_number' => $mobile1, 'tb_address_district' => $kelurahan1, 'tb_address_sub_district' => $kecamatan1, 'tb_city_id' => $city1, 'tb_province_id' => $province1));  // Table name, column names and respective values
        $res = $db->getResult();
        $idaddress1 = $res[0];
        
        $db->insert('tb_address', array('tb_address_ktp' => $no2, 'tb_address_street' => $jalan2, 'tb_address_mobile_number' => $mobile2, 'tb_address_district' => $kelurahan2, 'tb_address_sub_district' => $kecamatan2, 'tb_city_id' => $city2, 'tb_province_id' => $province2));  // Table name, column names and respective values
        $res2 = $db->getResult();
        $idaddress2 = $res2[0];
        include "../../function/saveautomatic.php";
        echo $datas . '<br/>';
        echo $values . '<br/>';
        echo $idaddress1 . '<br/>';
        echo $idaddress2 . '<br/>';

        $dbs = new Database();
        $dbs->connect();
        $dbs->sql("INSERT INTO `tb_personal_identity` (" . $datas . ",`tb_personal_identity_ktp_address`,`tb_personal_identity_current_address`,`tb_personal_identity_gender`,`tb_personal_identity_is_nichiren_shosu`,`tb_personal_identity_marital_status`
                )VALUES (" . $values . ",$idaddress1, $idaddress2,$gender,$mrstatus,$upacarashosu
                );");
//                ,'".$birth_date."','".$gojukai_date."','".$gohozon_accept_date."','".$kankai_date,$shosu_year."'
//                 ,`tb_personal_identity_birth_date`,`tb_personal_identity_gojukai_date`,`tb_personal_identity_gohozon_accept_date`,`tb_personal_identity_kankai_date`,`tb_personal_identity_nichiren_shosu_year`

        $res3 = $dbs->getResult();
    }




    if ($_GET['action'] == 'save') {
        //  $db->sql("INSERT INTO `tb_personal_identity` (" . $datas . ",`tb_personal_identity_ktp_address`,`tb_personal_identity_current_address`,`tb_personal_identity_gender`,`tb_personal_identity_marital_status`)VALUES (" . $values . ",$address1, $address2,$gender,$upacarashosu);");
        //    $res3 = $db->getResult();
    } else if ($_GET['action'] == 'update') {
        $id = $_GET['id'];
        $addressId1 = $_GET['adress1'];
        $addressId2 = $_GET['adress2'];

        $db->update('tb_address', array('tb_address_ktp' => "" . $no1 . "", 'tb_address_street' => "" . $jalan1 . "", 'tb_address_mobile_number' => "" . $mobile1 . "", 'tb_address_district' => "" . $kelurahan1 . "", 'tb_address_sub_district' => "" . $kecamatan1 . "", 'tb_city_id' => "" . $city1 . "", 'tb_province_id' => "" . $province1 . ""), 'tb_address_id=' . $addressId1 . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();

        $db->update('tb_address', array('tb_address_ktp' => "" . $no2 . "", 'tb_address_street' => "" . $jalan2 . "", 'tb_address_mobile_number' => "" . $mobile2 . "", 'tb_address_district' => "" . $kelurahan2 . "", 'tb_address_sub_district' => "" . $kecamatan2 . "", 'tb_city_id' => "" . $city2 . "", 'tb_province_id' => "" . $province2 . ""), 'tb_address_id=' . $addressId2 . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();


        $db->sql("UPDATE `tb_personal_identity` SET " . $datas . ",`tb_personal_identity_ktp_address`=$addressId1,`tb_personal_identity_current_address`=$addressId2,`tb_personal_identity_gender`=$gender,`tb_personal_identity_is_nichiren_shosu`=$upacarashosu,`tb_personal_identity_marital_status`=$mrstatus WHERE `tb_personal_identity` =" . $id . ";");
        //     $db->update('tb_country', array('tb_country_name' => "" . $name . "", 'tb_country_code' => "" . $code . ""), 'tb_country_id=' . $id . ''); // Table name, column names and values, WHERE conditions
        $res = $db->getResult();
//	$query1=mysql_query("update tb_".$cekMenu['menu_function_link']." set tb_warehouse_name='$name', tb_warehouse_code='$code' where tb_warehouse_id='$id'");
    }
} else {

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

