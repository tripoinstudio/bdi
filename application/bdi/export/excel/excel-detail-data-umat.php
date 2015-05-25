<?php
//$item = json_decode($_GET['item']);
ob_start();
$parentuser = "";
$id = $_GET['id'];

$dblist = new Database();
$dblist->connect();
$dblist->select('tb_data_umat', '*', NULL, 'tb_data_umat_id=' . $id);
$list_query = $dblist->getResult();
?>
<?php
$no = 0;
foreach ($list_query as $array_list_query) {
    $namaktp = $array_list_query['tb_data_umat_nama_ktp'];
    $namapanggilan = $array_list_query['tb_data_umat_nama_panggilan'];
    $tempat = $array_list_query['tb_data_umat_tempat'];
    $tgl_lahir = $array_list_query['tb_data_umat_tgl_lahir'];

    if ($array_list_query['tb_data_umat_gender'] == 2)
        $gender = 'P';
    else
        $gender = 'L';

    $notlp = $array_list_query['tb_data_umat_no_tlp'];
    $nohp = $array_list_query['tb_data_umat_no_hp'];
    $email = $array_list_query['tb_data_umat_email'];
    $alamattinggal = $array_list_query['tb_data_umat_alamat_tinggal'];
    $alamatktp = $array_list_query['tb_data_umat_alamat_ktp'];
    $kewarganegaraan = $array_list_query['tb_data_umat_kewarganegaraan'];
    $pekerjaan = $array_list_query['tb_data_umat_pekerjaan'];

    if ($array_list_query['tb_data_umat_keaktifan'] == 1)
        $keaktifan = 'Ya';
    else
        $keaktifan = 'Tidak';

    if ($array_list_query['tb_data_umat_dana_goku'] == 1)
        $danagoku = 'Ya';
    else
        $danagoku = 'Tidak';

    $tanggungjawab = $array_list_query['tb_data_umat_tanggung_jawab'];
    $hub1 = $array_list_query['tb_data_umat_hub1'];
    $hub2 = $array_list_query['tb_data_umat_hub2'];
    ?>
    <?php
    $dblist->select('tb_data_umat_pembagian', '*', NULL, 'tb_data_umat_id=' . $array_list_query['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_umatbg = $dblist->getResult();
    foreach ($list_umatbg as $array_list_umatbg) {
        $daerahid = $array_list_umatbg['tb_province_id'];
        $sentraid = $array_list_umatbg['tb_sentra_id'];
        $distrikid = $array_list_umatbg['tb_distrik_id'];
        $cetyaid = $array_list_umatbg['tb_cetya_id'];
        $dharmasalaid = $array_list_umatbg['tb_dharmasala_id'];
    }
    $provinceid = idListViewTarget($daerahid, "province", "tb_province_code");
    $NIK = autoCodeUmat($provinceid, $array_list_query['tb_data_umat_nama_ktp'], $array_list_query['tb_data_umat_code']);
    $province = idListViewTarget($daerahid, "province", "tb_province_name");
    $sentra = idListViewTarget($sentraid, "sentra", "tb_sentra_name");
    $distrik = idListViewTarget($distrikid, "distrik", "tb_distrik_name");
    $cetya = idListViewTarget($cetyaid, "cetya", "tb_cetya_name");
    $dharmasala = idListViewTarget($dharmasalaid, "dharmasala", "tb_dharmasala_name");
    ?>

<?php } ?>


<style>

    .table {
        width:90%;
        height: 40px;
        vertical-align: middle;

    }
    .table tr th{
        font-family: arial;
        text-align: left;
        font-weight: bold;
        font-size: 12px;

    }
    .table tr td{
        padding-left: 10px;
        font-size: 12px;
    }
    .tableno{
        text-align: center;height: 15px;padding-right: 10px;
    }
    .title{
        font-size: 20px;
        font-weight: bold;
    }
    .subtitle{
        font-size: 14px;
    }
    .page{

        padding-left: 30px;
        padding-top: 30px;

    }
</style>

<div class="page">
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">DETAIL DATA UMAT BDI</div>
    <br/>

    <div>DATA UMAT</div>
    <br/>
    <table class="table" style="padding: 10px;" border="1">
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >NIK Umat</th>
            <td style="width:60%;" class="hidden-phone"><?= $NIK; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Nama</th>
            <td style="width:70%;" class="hidden-phone"><?= $namaktp; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Nama Panggilan</th>
            <td style="width:70%;" class="hidden-phone"><?= $namapanggilan; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Tempat Tgl Lahir</th>
            <td style="width:70%;" class="hidden-phone"><?= $tempat; ?> , <?= subMonth($tgl_lahir); ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Jenis Kelamin</th>
            <td style="width:70%;" class="hidden-phone"><?= $gender; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >No Telp</th>
            <td style="width:70%;" class="hidden-phone"><?= $notlp; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >No HP</th>
            <td style="width:70%;" class="hidden-phone"><?= $nohp; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Alamat Sekarang</th>
            <td style="width:70%;" class="hidden-phone"><?= $alamattinggal; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Alamat KTP</th>
            <td style="width:70%;" class="hidden-phone"><?= $alamatktp; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Kewarganegaraan</th>
            <td style="width:70%;" class="hidden-phone"><?= idListViewTarget($kewarganegaraan, "country", "tb_country_name"); ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Pekerjaan</th>
            <td style="width:70%;" class="hidden-phone"><?= $pekerjaan; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Datang ke Vihara / Cetya / Dharmasala</th>
            <td style="width:70%;" class="hidden-phone"><?= $keaktifan; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Danaparamita / Gokuyo</th>
            <td style="width:70%;" class="hidden-phone"><?= $danagoku; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Tanggung Jawab</th>
            <td style="width:70%;" class="hidden-phone"><?= $tanggungjawab; ?></td>
        </tr>
    </table>
    <br/>
    <br/>

    <div>DATA UMAT PEMBAGIAN</div>
    <BR/>
    <table class="table" style="padding: 10px;" border="1">
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Daerah</th>
            <td style="width:60%;" class="hidden-phone"><?= $province; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Sentra</th>
            <td style="width:70%;" class="hidden-phone"><?= $sentra; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Distrik</th>
            <td style="width:70%;" class="hidden-phone"><?= $distrik; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Cetya</th>
            <td style="width:70%;" class="hidden-phone"><?= $cetya; ?></td>
        </tr>
        <tr>
            <th style="width:30%; padding: 5px;" class="hidden-phone" >Dharmasala</th>
            <td style="width:70%;" class="hidden-phone"><?= $dharmasala; ?></td>
        </tr>
    </table>
    <br/>
    <br/>

    <div>HUBUNGAN KELUARGA 1</div>
    <BR/>
    <table class="table" style="padding: 10px;" border="1">
        <?php
        $list_keluarga = mysql_query('SELECT r.`tb_relationship_name`,r.`tb_data_umat_id`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON r.`tb_relationship_relationship_id`=f.`tb_family_relationship_id` WHERE f.`tb_family_relationship_id`=' . $hub1); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
        while ($array_keluarga = mysql_fetch_array($list_keluarga)) {
            ?>
            <tr>
                <th style="width:30%; padding: 5px;" class="hidden-phone">Nama</th>
                <td style="width:60%;" class="hidden-phone"><?= idListViewTarget($array_keluarga['tb_data_umat_id'], 'data_umat', 'tb_data_umat_nama_ktp'); ?></td>
            </tr>
            <tr>
                <th style="width:30%; padding: 5px;" class="hidden-phone">Hubungan</th>
                <td style="width:60%;" class="hidden-phone"><?= $array_keluarga['tb_relationship_relation_code']; ?></td>
            </tr>
        <?php } ?>
    </table>
    <br/>
    <br/>

    <div>HUBUNGAN KELUARGA 2</div>
    <BR/>
    <table class="table" style="padding: 10px;" border="1">
        <?php
        $list_keluarga = mysql_query('SELECT r.`tb_relationship_name`,r.`tb_data_umat_id`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON r.`tb_relationship_relationship_id`=f.`tb_family_relationship_id` WHERE f.`tb_family_relationship_id`=' . $hub2); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
        while ($array_keluarga = mysql_fetch_array($list_keluarga)) {
            ?>
            <tr>
                <th style="width:30%; padding: 5px;" class="hidden-phone">Nama</th>
                <td style="width:60%;" class="hidden-phone"><?= idListViewTarget($array_keluarga['tb_data_umat_id'], 'data_umat', 'tb_data_umat_nama_ktp'); ?></td>
            </tr>
            <tr>
                <th style="width:30%; padding: 5px;" class="hidden-phone">Hubungan</th>
                <td style="width:60%;" class="hidden-phone"><?= $array_keluarga['tb_relationship_relation_code']; ?></td>
            </tr>
        <?php } ?>
    </table>

</div>