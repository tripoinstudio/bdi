<?php
$dblist = new Database();
$dblist->connect();

$alamat = $_GET['cari_alamat'];
$notlp = $_GET['cari_tlp'];
$dblist->select('tb_data_umat', '*', NULL, "`tb_data_umat_alamat_tinggal` like '%" . $alamat . "%' and `tb_data_umat_no_tlp` like '%" . $notlp . "%'");
$list_query = $dblist->getResult();

$length_list = count($list_query);
$_GET['pages'] = 'P';
?>

<link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
<div class="page">
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle" style="text-align: center">UMAT NICHIREN SHOSHU</div>
    <br/>

    <?php
    $no = 0;
    foreach ($list_query as $array_list_query) {
        $no++;
        $genderUmat = 'L';
        if ($array_list_query['tb_data_umat_gender'] == 2)
            $genderUmat = 'P';
        ?>
    
    
        <?php
        if ($no == 1) {
            ?>
    <table>
        <tr><td>Per Tanggal</td><td>:</td><td><?php print_r(date("d-M-Y")); ?></td></tr>
        <tr><td>Dicetak Oleh</td><td>:</td><td>Pak RT</td></tr>
    </table>
    <br/>
    <table style="border-collapse: collapse; height: 40px; vertical-align: middle">
        <tr><td style="height: 30px; text-align: center; width: 80px; border-right: black; border-left: black; border-top: black"></td><td style="border-right: black; border-top: black; width: 450px; "></td><th style="width: 140px; text-align: center; border-top: black; border-right: black; border-bottom: black">Telp Rumah</th></tr>
        <tr><th style="height: 30px; text-align: center; width: 80px; border-right: black; border-left: black; border-bottom: black" rowspan="2">ALAMAT</th><td style="border-bottom: black; border-right: black; text-align: center; width: 450px;"><?= $array_list_query['tb_data_umat_alamat_tinggal']; ?></td><td style="width: 120px; border-bottom: black; border-right: black; text-align: center;"><?= $array_list_query['tb_data_umat_no_tlp'];?></td></tr>
    </table>
    <br/>
    <table style="border-collapse: collapse; height: 40px; vertical-align: middle">
        <tr><th style="height: 30px; text-align: center; width: 200px; border-right: black; border-left: black; border-top: black; border-bottom: black">NAMA</th><th style="border-right: black; border-top: black; width: 70px; "></th><th style="border-bottom: black; border-top: black; width: 120px; border-right: black; text-align: center; width: 200px;">TGL GUJOKAI</th><th style="width: 205px; text-align: center; border-top: black; border-right: black;"></th></tr>
        <tr><th style="height: 30px; text-align: center; border-right: black; border-left: black; border-bottom: black">TTL</th><th style="border-bottom: black; border-right: black; text-align: center;">L/P</th><th style="border-bottom: black; width: 120px; border-right: black; text-align: center">TGL KANKAI</th><th style="width: 120px; border-bottom: black; border-right: black; text-align: center">KETERANGAN</th></tr>
    </table>
    <br/>
            <?php
        }
        ?>
    <table style="border-collapse: collapse; height: 40px; vertical-align: middle">
        <tr><td style="height: 20px; text-align: center; width: 196px; border-right: black; border-left: black; border-top: black; border-bottom: black"><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td><td style="border-right: black; border-top: black; width: 66px; "></td><td style="border-bottom: black; border-top: black; border-right: black; text-align: center; width: 196px;">TGL GUJOKAI</td><td style="width: 201px; text-align: center; border-top: black; border-right: black;"></td></tr>
        <tr><td style="height: 20px; text-align: center; border-right: black; border-left: black; border-bottom: black"><?= $array_list_query['tb_data_umat_tempat']; ?>, <?= $array_list_query['tb_data_umat_tgl_lahir']; ?></td><td style="border-bottom: black; border-right: black; text-align: center;"><?= $genderUmat ?></td><td style="border-bottom: black; border-right: black; text-align: center">TGL KANKAI</td><td style="border-bottom: black; border-right: black; text-align: center">(                   )</td></tr>
    </table>
    <br/>
        <?php
//        if ($no % 2 == 0) {
//            ?>
        <!--<page/> <br/>-->
            <?php
//        }
//        ?>
<?php } ?>
</div>