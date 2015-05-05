<?php

$dbumat->select('tb_data_keumatan', '*', NULL, 'tb_data_umat_id=' . $query1['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keumatan = $dbumat->getResult();
?>
<?php
$no = 1;
foreach ($list_keumatan as $array_keumatan) {
$mariage;
if ($array_keumatan['tb_data_keumatan_marriage_status'] == 1) {
    $mariage = 'Kawin';
} else if ($array_keumatan['tb_data_keumatan_marriage_status'] == 2) {
    $mariage = 'Belum Kawin';
} else {
    $mariage = 'Cerai';
}
inputGeneralView($mariage, STATUS_MARRIAGE, 'marriage_status', 'true', $_GET['action']);
?>
<?=inputGeneralView($array_keumatan['tb_data_keumatan_kankai'], TAHUN_KANKAI, 'kankai', 'true', $_GET['action']);?>

<?php

    ?>
<?= inputGeneralView($array_address['tb_address_street'], 'Jalan', 'jalan', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_ktp'], 'No', 'ktp', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_district'], 'Kelurahan', 'disctrict', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_sub_district'], 'Kecamatan', 'sub_disctrict', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_address['tb_address_mobile_number'], 'Mobile Number', 'mobile_number', 'true', $_GET['action']); ?>
<?= inputGeneralViewLov($array_address['tb_city_id'], 'Kabupaten', 'city', 'true', $_GET['action']); ?>
<?= inputGeneralViewLov($array_address['tb_province_id'], 'Provinsi', 'province', 'true', $_GET['action']); ?>


<?php } ?>
