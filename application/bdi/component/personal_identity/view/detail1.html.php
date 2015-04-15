

<?= inputGeneralView($query1['tb_personal_identity_name'], 'Nama Umat', 'name', 'true', $_GET['action']); ?>
<?php
$js;
if ($query1['tb_personal_identity_gender'] == 1) {
    $js = 'Laki - Laki';
} else {
    $js = 'Perempuan';
}
inputGeneralView($js, 'Jenis Kelamin', 'gender', 'true', $_GET['action']);
?>
<?= inputGeneralView($query1['tb_personal_identity_place_of_birth'].' , '.$query1['tb_personal_identity_birth_date'], 'Tempat / Tanggal Lahir', 'ttl', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_personal_identity_job'], 'Pekerjaan', 'job', 'true', $_GET['action']); ?>

    <?php
$ms;
if ($query1['tb_personal_identity_marital_status'] == 1) {
    $ms = 'Menikah';
} else {
    $ms = 'Belum Menikah';
}
inputGeneralView($ms, 'Status Pernikahan', 'marital_status', 'true', $_GET['action']);
?>

<?php
echo inputGeneralView('', 'Negara', 'marital_status', 'true', $_GET['action']);
?>

<?= inputGeneralView($query1['tb_personal_identity_gojukai_date'], 'Tgl Gozukai', 'name', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_personal_identity_gohozon_accept_date'], 'Tgl Terima Gohozon', 'name', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_personal_identity_okataki_gohozon'], 'Okataki Gohozon', 'okataki', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_personal_identity_omamori_gohozon'], 'Omamori Gohozon', 'omamori', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_personal_identity_tokubetsu_gohozon'], 'Tokubetsu Gohozon', 'tokubetsu', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_personal_identity_kankai_date'], 'Kankai Date', 'kankai', 'true', $_GET['action']); ?>
<?php
$ns;
if ($query1['tb_personal_identity_is_nichiren_shosu'] == 1) {
    $ns = 'Ya';
} else {
    $ns = 'Tidak';
}
inputGeneralView($ns, 'Upacara Nichiren Soshu', 'upacara', 'true', $_GET['action']);
?>