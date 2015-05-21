

<?= inputGeneralView($query1['tb_data_umat_nama_ktp'], NAMA_SEKARANG, 'nama_ktp', 'true', $_GET['action']); ?>

<br />
<?= inputGeneralView($query1['tb_data_umat_nama_panggilan'], NAMA_PANGGILAN, 'nama_panggilan', 'true', $_GET['action']); ?>
<?=inputGeneralTemplate(TTL, $query1['tb_data_umat_tempat'] . ' , ' . subMonth($query1['tb_data_umat_tgl_lahir']) . '');

//= inputGeneralTemplate(TTL, '
//                    <input type="text"  id="tempat" name="truetitles[]" value="'.$query1['tb_data_umat_tempat'].'" class="span4" />
//                    <input type="text"  id="tgl_lahir" name="truetitles[]" value="'.$query1['tb_data_umat_tgl_lahir'].'" class="span4" />
//                    ');
?>

<?php
$js;
if ($query1['tb_data_umat_gender'] == 1) {
    $js = 'Laki - Laki';
} else {
    $js = 'Perempuan';
}
inputGeneralView($js, GENDER, 'gender', 'true', $_GET['action']);
?>

<br />
<hr />
<br />
<?php

$warga;
if ($query1['tb_data_umat_kewarganegaraan'] == 1) {
    $warga = 'WNI';
} else {
    $warga = 'WNA';
}
inputGeneralView($warga, KEWARGANEGARAAN, 'gender', 'true', $_GET['action']);
?>
<?= inputGeneralView($query1['tb_data_umat_pekerjaan'], PEKERJAAN, 'pekerjaan', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_data_umat_alamat_ktp'], ALAMAT_KTP, 'alamat_ktp', 'true', $_GET['action']); ?>

<br />
<hr />
<br />

<?php

$dbumat = new Database();
$dbumat->connect();
$dbumat->select('tb_alamat', '*', NULL, 'tb_data_umat_id=' . $query1['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_address = $dbumat->getResult();
foreach ($list_address as $array_list_address) {
    $order = $array_list_address['tb_alamat_order'];
    switch ($order) {
        case 1:
            inputGeneralView($array_list_address['tb_alamat_tinggal'], ALAMAT_TINGGAL, 'alamat_tinggal', 'true', $_GET['action']);
            inputGeneralView($array_list_address['tb_alamat_telp'], TELP_RUMAH, 'alamat_tinggal', 'true', $_GET['action']);
            break;
        case 2:
            inputGeneralView($array_list_address['tb_alamat_tinggal'], ALAMAT_TINGGAL1, 'alamat_tinggal', 'true', $_GET['action']);
            inputGeneralView($array_list_address['tb_alamat_telp'], TELP_RUMAH1, 'alamat_tinggal', 'true', $_GET['action']);
            inputGeneralView($array_list_address['tb_alamat_perubahan'], TGL_PRBH_ALMT1, 'alamat_tinggal_perubahan', 'true', $_GET['action']);
            break;
        case 3:
            inputGeneralView($array_list_address['tb_alamat_tinggal'], ALAMAT_TINGGAL2, 'alamat_tinggal', 'true', $_GET['action']);
            inputGeneralView($array_list_address['tb_alamat_telp'], TELP_RUMAH2, 'alamat_tinggal', 'true', $_GET['action']);
                 inputGeneralView($array_list_address['tb_alamat_perubahan'], TGL_PRBH_ALMT2, 'alamat_tinggal_perubahan', 'true', $_GET['action']);
       break;

        default:
            break;
    }
}
?>
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

//echo inputGeneralView('', 'Negara', 'marital_status', 'true', $_GET['action']);
?>

<br />
<hr />
<br />

<?= inputGeneralView($query1['tb_data_umat_no_hp'], NO_HANDPHONE, 'alamat_ktp', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_data_umat_email'], EMAIL, 'alamat_ktp', 'true', $_GET['action']); ?>
