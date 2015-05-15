<?php
$parentuser = '';
//if($_GET['alamat'] != '' || $_GET['notlp'] != null){
//    $parentuser = "tb_data_umat_alamat_tinggal like '%" . $_GET['alamat'] . "%' or tb_data_umat_no_tlp like '%" . $_GET['notlp'] . "%'";


$dblist = new Database();
$dblist->connect();
$dblist->select('tb_data_umat', '*', NULL, $parentuser); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
$_GET['pages'] = 'L';
?>

<link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
<div class="page">
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">LIST DATA UMAT</div>
    <br/>

    <?php
    $no = 0;
    foreach ($list_query as $array_list_query) {
        $no++;
        $genderUmat = 'Laki - laki';
        if ($array_list_query['tb_data_umat_gender'] == 2)
            $genderUmat = 'Perempuan';
        ?>
        <table class="table">
            <tr>
                <th>No</th>
                <th>ID Umat</th>
                <th>Nama Lengkap</th>
                <th>TTL</th>
                <th>Jenis Kelamin</th>
                <th>Alamat KTP</th>
                <th>No HP</th>
                <th>Email</th>
            </tr>
            <tr>
                <td style="width: 20px;" class="tableno"><?= $no; ?></td>					
                <td style="width: 80px;"><?= $array_list_query['tb_data_umat_no_id']; ?></td>
                <td style="width: 130px;"><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                <td style="width: 110px;"><?= $array_list_query['tb_data_umat_tempat']; ?>, <?= $array_list_query['tb_data_umat_tgl_lahir']; ?></td>
                <td style="width: 70px;"><?= $genderUmat;
    $parentuser
        ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_alamat_ktp']; ?></td>
                <td style="width: 80px;"><?= $array_list_query['tb_data_umat_no_hp']; ?></td>
                <td style="width: 130px;"><?= $array_list_query['tb_data_umat_email']; ?></td>
    <!--                    <td style="width: 200px;"><?= $array_list_query['tb_data_umat_alamat_tinggal']; ?></td>
                <td style="width: 100px;"><?= $array_list_query['tb_data_umat_no_tlp']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_hub1']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_hub2']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_kewarganegaraan']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_pekerjaan']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_keaktifan']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_dana_goku']; ?></td>
                <td style="width: 200px;"><?= $array_list_query['tb_data_umat_tanggung_jawab']; ?></td>-->
            </tr>
        </table>
        <table>
            <tr><td>Alamat Sekarang</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_alamat_tinggal']; ?></td></tr>
            <tr><td>No Telp</td><td>:</td><td style="width: 100px;"><?= $array_list_query['tb_data_umat_no_tlp']; ?></td></tr>
            <tr><td>Hubungan Keluarga 1</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_hub1']; ?></td></tr>
            <tr><td>Hubungan Keluarga 2</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_hub2']; ?></td></tr>
            <tr><td>Kewarganegaraan</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_kewarganegaraan']; ?></td></tr>
            <tr><td>Pekerjaan</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_pekerjaan']; ?></td></tr>
            <tr><td>Keaktifan</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_keaktifan']; ?></td></tr>
            <tr><td>Dana Goku</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_dana_goku']; ?></td></tr>
            <tr><td>Tanggung Jawab</td><td>:</td><td style="width: 200px;"><?= $array_list_query['tb_data_umat_tanggung_jawab']; ?></td></tr>
        </table>
    <br/>
    <?php 
    if($no % 2 == 0){
    ?>
    <page></page><br/><br/>
    <?php
    }
    ?>
<?php } ?>
</div>