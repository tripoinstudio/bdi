<?php
//
//if ($_GET['type'] == 'code') {
//    $texts = 'tb_country_code';
//} else if ($_GET['type'] == 'name') {
//    $texts = 'tb_country_name';
//} else {
//    $texts = '';
//}
//
//if($_GET['field'] != '' || $_GET['field'] != null || $_GET['field'] != 'undefined'){
//    $parentuser = $texts . " like '%" . $_GET['field'] . "%' and status=1";
//} else {
$parentuser = "";



$dblist = new Database();
$dblist->connect();

$alamat = $_GET['alamat'];
$notlp = $_GET['notlp'];
$dblist->select('tb_data_umat', '*', NULL, "`tb_data_umat_alamat_tinggal` like '%" . $alamat . "%' and `tb_data_umat_no_tlp` like '%" . $notlp . "%'");
//$dblist->select('tb_country', '*', NULL, $parentuser); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
?>
<div class="title"><?= $namePage; ?> </div>
<div class="subtitle">LIST DATA UMAT</div>
<table>
    <thead>
        <tr>
            <td>No</td>
            <td>ID Umat</td>
            <td>Nama Lengkap</td>
            <td>Tempat Tanggal Lahir</td>
            <td>Jenis Kelamin</td>
            <td>Alamat KTP</td>
            <td>No HP</td>
            <td>Email</td>
            <td>Alamat Sekarang</td>
            <td>No Telp</td>
            <td>Hubungan Keluarga 1</td>
            <td>Hubungan Keluarga 1</td>
            <td>Kewarganegaraan</td>
            <td>Pekerjaan</td>
            <td>Keaktifan</td>
            <td>Dana Goku</td>
            <td>Tanggung Jawab</td>
        </tr>
    </thead>
    <tbody id="listdata">

        <?php
        $no = 0;
        foreach ($list_query as $array_list_query) {
            $no++;
            $genderUmat = 'Laki - laki';
            if ($array_list_query['tb_data_umat_gender'] == 2)
                $genderUmat = 'Perempuan';
            ?>
            <tr>
                <td><?= $no; ?></td>
                <td><?= $array_list_query['tb_data_umat_no_id']; ?></td>
                <td><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                <td><?= $array_list_query['tb_data_umat_tempat']; ?>, <?= $array_list_query['tb_data_umat_tgl_lahir']; ?></td>
                <td><?= $genderUmat; ?></td>
                <td><?= $array_list_query['tb_data_umat_alamat_ktp']; ?></td>
                <td><?= $array_list_query['tb_data_umat_no_hp']; ?></td>
                <td><?= $array_list_query['tb_data_umat_email']; ?></td>
                <td><?= $array_list_query['tb_data_umat_alamat_tinggal']; ?></td>
                <td><?= $array_list_query['tb_data_umat_no_tlp']; ?></td>
                <td><?= $array_list_query['tb_data_umat_hub1']; ?></td>
                <td><?= $array_list_query['tb_data_umat_hub2']; ?></td>
                <td><?= $array_list_query['tb_data_umat_kewarganegaraan']; ?></td>
                <td><?= $array_list_query['tb_data_umat_pekerjaan']; ?></td>
                <td><?= $array_list_query['tb_data_umat_keaktifan']; ?></td>
                <td><?= $array_list_query['tb_data_umat_dana_goku']; ?></td>
                <td><?= $array_list_query['tb_data_umat_tanggung_jawab']; ?></td>
            </tr>
        <?php } ?>
    </tbody>


</table>