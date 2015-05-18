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
   // $mariage = 'Cerai';
	 $mariage = 'Belum Kawin';
}
inputGeneralView($mariage, STATUS_MARRIAGE, 'marriage_status', 'true', $_GET['action']);
?>
<?php if ($array_keumatan['tb_data_keumatan_marriage_status'] == 1 || $array_keumatan['tb_data_keumatan_marriage_status'] == 3) { ?>
<?=inputGeneralView($array_keumatan['tb_data_keumatan_nichiren_upacara'], U_N_S, 'nichiren_upacara', 'true', $_GET['action']);?>
<?=inputGeneralView($array_keumatan['tb_data_keumatan_nichiren_tahun'], TAHUN, 'nichiren_tahun', 'true', $_GET['action']);?>
<?=inputGeneralView($array_keumatan['tb_data_keumatan_nichiren_tempat'], TEMPAT, 'nichiren_tempat', 'true', $_GET['action']);?>
<?=inputGeneralView($array_keumatan['tb_data_keumatan_nichiren_pemimpin'], PEMIMPIN, 'nichiren_pemimpin', 'true', $_GET['action']);?>
<?php } else {
	
} ?>

<?=inputGeneralView($array_keumatan['tb_data_keumatan_gojukai'], TAHUN_GOJUKAI, 'gojukai', 'true', $_GET['action']);?>


<?= inputGeneralTemplate('<b>'.T_R_G.'</b>', ''); ?>
<?= inputGeneralView($array_keumatan['tb_data_keumatan_gohonzon_okataki'], T_T_OK_GO, 'okataki_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_keumatan['tb_data_keumatan_gohonzon_omamori'], T_T_OM_GO, 'omamori_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneralView($array_keumatan['tb_data_keumatan_gohonzon_tokubetsu'], T_T_TO_GO, 'tokubetsu_gohozon', 'true', $_GET['action']); ?>

<?=inputGeneralView($array_keumatan['tb_data_keumatan_kankai'], TAHUN_KANKAI, 'kankai', 'true', $_GET['action']);?>

<?php
$gohifu_stat;
if ($array_keumatan['tb_data_keumatan_gohifu'] == 1) {
    $gohifu_stat = 'Pernah';
} else {
    $gohifu_stat = 'Tidak';
} 
inputGeneralView($gohifu_stat, ME_GOHIFU, 'gohifu', 'true', $_GET['action']);
if ($array_keumatan['tb_data_keumatan_gohifu'] == 1) {
echo inputGeneralTemplate(TDP, $array_keumatan['tb_data_keumatan_gohifu_tahun'] . ' - ' . $array_keumatan['tb_data_keumatan_penyakit'] . '');
} else {
	
}
?>

<?php } ?>
