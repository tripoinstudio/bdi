<?php
$dblist = new Database();
$dblist->connect();

$alamat = $_GET['cari_alamat'];
$notlp = $_GET['cari_tlp'];
$dblist->select('tb_data_umat', '*', NULL, "`tb_data_umat_alamat_tinggal` like '%" . $alamat . "%' and `tb_data_umat_no_tlp` like '%" . $notlp . "%'");
$list_query = $dblist->getResult();

$length_list = count($list_query);
?>
<div class="title"><?= $namePage; ?> </div>
<strong>DATA UMAT DENGAN ALAMAT</strong>
<br/>
<?= $list_query[0]['tb_data_umat_alamat_tinggal'] ?>
<br/>
<strong>NO TELP RUMAH</strong>
<br/>
<?= $list_query[0]['tb_data_umat_no_tlp']; ?>
<br/><br/>
<table class="table" border=1 >
    <thead>
        <tr>
            <td style="border: black; padding: 10px; width: 40px">NO</td>
            <td style="border: black; padding: 10px; width: 100px">NIK UMAT</td>
            <td style="border: black; padding: 10px; width: 200px">NAMA SESUAI KTP</td>
            <td style="border: black; padding: 10px; width: 50px">L/P</td>
            <td style="border: black; padding: 10px; width: 200px">TEMPAT TANGGAL LAHIR</td>
            <td style="border: black; padding: 10px; width: 100px">TAHUN GOJUKAI</td>
            <td style="border: black; padding: 10px; width: 100px">TAHUN KANKAI</td>
            <td style="border: black; padding: 10px; width: 200px">KETERANGAN</td>
        </tr>
    </thead>
    <tbody id="listdata">
        <?php
        $no = 0;
        foreach ($list_query as $array_list_query) {
            $no++;
            $genderUmat = 'L';
            if ($array_list_query['tb_data_umat_gender'] == 2)
                $genderUmat = 'P';
            ?>
            <tr>
                <td style="border: black; padding: 10px; text-align: center" ><?= $no; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ><?= $array_list_query['tb_data_umat_no_id']; ?></td>
                <td style="border: black; padding: 10px;"><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ><?= $genderUmat; ?></td>
                <td style="border: black; padding: 10px" ><?= $array_list_query['tb_data_umat_tempat']; ?>, <?= $array_list_query['tb_data_umat_tgl_lahir']; ?></td>
                <td style="border: black; padding: 10px; text-align: center" ></td>
                <td style="border: black; padding: 10px; text-align: center" ></td>
                <td style="border: black; padding: 10px" ></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
<br/>
<strong>Tanggal Cetak&nbsp;:</strong><?php print_r(date("d/M/Y")); ?><br/>
<strong>Dicetak Oleh&nbsp;&nbsp;&nbsp;:</strong><?php echo $_SESSION['user_id']; ?>


