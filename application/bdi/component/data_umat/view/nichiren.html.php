<?php
$dtngk;
if ($query1['tb_data_umat_keaktifan'] == 1) {
    $dtngk = 'Ya';
} else {
    $dtngk = 'Tidak';
}

 $dngk;
if ($query1['tb_data_umat_dana_goku'] == 1) {
    $dngk = 'Ya';
} else {
    $dngk = 'Tidak';
}
echo inputGeneralView($dtngk, DTNG_KE, 'keaktifan', 'true', $_GET['action']); ?>
<?= inputGeneralView($dngk, DANAPRMT, 'dana_goku', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_data_umat_tanggung_jawab'], TNGJWB, 'tanggung_jawab', 'true', $_GET['action']); ?>
