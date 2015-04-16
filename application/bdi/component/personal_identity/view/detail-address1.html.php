<?php

$dblist = new Database();
$dblist->connect();
$dblist->select('tb_address', '*', NULL, 'tb_address_id=' . $query1['tb_personal_identity_ktp_address']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();
?>
<?php
$no = 1;
foreach ($list_query as $array_address) {
    ?>
<?= inputGeneralView($array_address['tb_address_street'], 'Jalan', 'jalan', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_ktp'], 'No', 'ktp', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_district'], 'Kelurahan', 'disctrict', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_sub_district'], 'Kecamatan', 'sub_disctrict', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_mobile_number'], 'Mobile Number', 'mobile_number', 'true', $_GET['action']); ?>
<?= inputGeneralViewLov($array_address['tb_city_id'], 'Kabupaten', 'city', 'true', $_GET['action']); ?>
<?= inputGeneralViewLov($array_address['tb_province_id'], 'Provinsi', 'province', 'true', $_GET['action']); ?>


<?php } ?>
