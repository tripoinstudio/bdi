<?php
//$item = json_decode($_GET['item']);
ob_start(); 
$parentuser = "";


$dblist = new Database();
$dblist->connect();

$user_id_sekda = $_SESSION['user_id'];
$dblist->select('tb_group', 'tb_group_name', null, 'tb_group_id='.$_SESSION['id_group'] );
$namesekdas = $dblist->getResult();
$dblist->select('tb_user_province', 'tb_province_id', null, 'user_id='.$user_id_sekda );
$provincesekdas = $dblist->getResult();
if ($namesekdas[0]['tb_group_name'] == 'sekda'){
    $dblist->select('tb_data_umat_pembagian', '*', 'tb_data_umat', 'tb_data_umat_pembagian.tb_data_umat_id=tb_data_umat.tb_data_umat_id AND tb_data_umat_pembagian.tb_province_id='.$provincesekdas[0]['tb_province_id']);
    $list_query = $dblist->getResult();
}else{
    $dblist->select('tb_data_umat', '*', 'tb_data_umat_pembagian', 'tb_data_umat_pembagian.tb_data_umat_id=tb_data_umat.tb_data_umat_id'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $list_query = $dblist->getResult();    
}
$length_list = count($list_query);
?>

<link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
<div class="page">
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">LIST DATA UMAT BDI</div>
    <br/>
    <table class="table">
            <tr>
                <th style="width:5%;" class="hidden-phone" >NIK Umat</th>
                <th style="width:15%;" class="hidden-phone">Nama Sesuai KTP</th>
                <th style="width:10%;" class="hidden-phone">Daerah</th>
                <th style="width:10%;" class="hidden-phone">Sentra</th>
                <th style="width:10%;" class="hidden-phone">Distrik</th>
                <th style="width:10%;" class="hidden-phone">Cetya</th>
                <th style="width:10%;" class="hidden-phone">Dharmasala</th>
            </tr>

            <?php
            $no = 0;
            foreach ($list_query as $array_list_query) {
              //  $no++;
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
                <tr class="odd gradeX">
                    <td><?= $NIK; ?></td>
                    <td><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                    <td><?= $province; ?></td>
                    <td><?= $sentra; ?></td>
                    <td><?= $distrik; ?></td>
                    <td><?= $cetya; ?></td>
                    <td><?= $dharmasala; ?></td>
                    
                </tr>
            <?php } ?>


    </table>
</div>