<?php
$dblist = new Database();
$dblist->connect();

$alamat = $_GET['cari_alamat'];
$notlp = $_GET['cari_tlp'];
$createdBy = $_GET['created_by'];

$userFullname = mysql_query('SELECT user_fullname FROM tb_user');
$userFullname2 = mysql_fetch_array($userFullname);
$manualQuery = 'SELECT * FROM tb_data_umat a JOIN tb_data_keumatan b ON a.tb_data_umat_id = b.tb_data_umat_id';
$list_query = mysql_query($manualQuery);

$length_list = count($list_query);
$_GET['pages'] = 'L';
?>

<link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
<div class="page">
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle" style="text-align: center">UMAT NICHIREN SHOSHU</div>
    <br/>

    
    
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
        <br/><br/>
        <table class="table" border=1 >
            <thead>
                <tr>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; ">NO</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center">NIK UMAT</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center">NAMA KTP</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center">L/P</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center">NO HP</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center">EMAIL</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center" >PEKERJAAN</td>
                    <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center">ALAMAT SEKARANG</td>
                </tr>
            </thead>
            <tbody id="listdata">
            <?php } ?>
            <tr>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px;"><?= $no; ?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px;">&nbsp;<?=$array_list_query['tb_data_umat_no_id']?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px;"><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center" ><?= $genderUmat; ?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center" ><?= $array_list_query['tb_data_umat_no_hp']; ?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center" ><?= $array_list_query['tb_data_umat_email']; ?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px;"><?= $array_list_query['tb_data_umat_pekerjaan']; ?></td>
                <td style="border: black; padding-top: 10px; padding-bottom: 10px; padding-right: 7px; text-align: center; width: 250px;"><?= $array_list_query['tb_data_umat_alamat_tinggal']; ?></td>
            </tr>
        <?php } ?>    
    </tbody>
</table>
</div>