<?php
$dblist = new Database();
$dblist->connect();

$alamat = $_GET['cari_alamat'];
$notlp = $_GET['cari_tlp'];
$createdBy = $_GET['created_by'];

$userFullname = mysql_query('SELECT user_fullname FROM tb_user WHERE user_username like "' . $createdBy . '"');
$userFullname2 = mysql_fetch_array($userFullname);

$manualQuery = 'SELECT * FROM tb_data_umat a JOIN tb_data_keumatan b ON a.tb_data_umat_id = b.tb_data_umat_id WHERE a.tb_data_umat_alamat_tinggal like "%' . $alamat . '%" AND a.tb_data_umat_no_tlp like "%' . $notlp . '%"';
$list_query = mysql_query($manualQuery);

$length_list = count($list_query);
?>
<div class="title"><?= $namePage; ?> </div>


<?php
$no = 0;
while ($array_list_query = mysql_fetch_array($list_query)) {
    $no++;
    $genderUmat = 'L';
    if ($array_list_query['tb_data_umat_gender'] == 2) {
        $genderUmat = 'P';
    }
    if ($no == 1) {
        ?>

        <strong>DATA UMAT DENGAN ALAMAT</strong>
        <br/>
        <?= $array_list_query['tb_data_umat_alamat_tinggal']; ?>
        <br/>
        <strong>NO TELP RUMAH</strong>
        <br/>
        <?= $array_list_query['tb_data_umat_no_tlp']; ?>
        <br/><br/>
        <table class="table" border=1 >
            <thead>
                <tr>
                    <td style="border: black; padding: 20px; width: 40px; text-align: center">NO</td>
                    <td style="border: black; padding: 20px; width: 100px; text-align: center">NIK UMAT</td>
                    <td style="border: black; padding: 20px; width: 200px; text-align: center">NAMA SESUAI KTP</td>
                    <td style="border: black; padding: 20px; width: 50px; text-align: center">L/P</td>
                    <td style="border: black; padding: 20px; width: 200px; text-align: center">TEMPAT TANGGAL LAHIR</td>
                    <td style="border: black; padding: 20px; width: 110px; text-align: center">TAHUN GOJUKAI</td>
                    <td style="border: black; padding: 20px; width: 110px; text-align: center">TAHUN KANKAI</td>
                    <td style="border: black; padding: 20px; width: 200px; text-align: center">KETERANGAN</td>
                </tr>
            </thead>
            <tbody id="listdata">
            <?php } ?>
            <tr>
                <td style="border: black; padding: 10px; text-align: center" ><?= $no; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ><?= $array_list_query['tb_data_umat_no_id']; ?></td>
                <td style="border: black; padding: 10px;"><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ><?= $genderUmat; ?></td>
                <td style="border: black; padding: 10px" ><?= $array_list_query['tb_data_umat_tempat']; ?>, <?= $array_list_query['tb_data_umat_tgl_lahir']; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ><?= $array_list_query['tb_data_keumatan_gojukai']; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ><?= $array_list_query['tb_data_keumatan_kankai']; ?></td>
                <td style="border: black; padding: 10px" ></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
<br/>
<strong>Tanggal Cetak&nbsp;:</strong> <?php print_r(date("d/M/Y")); ?><br/>
<strong>Dicetak Oleh&nbsp;&nbsp;&nbsp;:</strong> <?= $userFullname2['user_fullname'] ?>


