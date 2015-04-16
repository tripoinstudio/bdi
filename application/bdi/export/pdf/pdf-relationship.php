<?php
//$item = json_decode($_GET['item']);

$parentuser = "";


$dblist = new Database();
$dblist->connect();
$dblist->select('tb_country', '*', NULL, $parentuser); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
?>

<link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
<div class="page">
    <div class="title" style=""><?= $namePage; ?> </div>
    <div class="subtitle" style="text-align: center;">ALAMAT UMAT NICHIREN SOSHUN</div>
    <div class="subtitle" style="text-align: right;">Tanggal Cetak : <?= date('d-m-Y'); ?></div>

    <br/>
    <table class="table" style="width: 1000px;">
        <tr style="text-align: center;">
            <td style="height: 30px;width: 25%;">ALAMAT</td>
            <td style="width: 50%;"></td>
            <td style="width: 25%;;">Telp Rumah</td>

        </tr>
        <tr>
            <th style="height: 30px;width: 20px;">No</th>
            <th style="width: 200px;">Code</th>
            <th style="width: 200px;">Name</th>
        </tr>




    </table>
    <br/>

    <table class="table" style="width: 1000px;">

        <tr>
            <th style="height: 30px;width: 200px;">Nama<br/>Tempat / Tanggal Lahir</th>
            <th style="width: 200px;">L/P</th>
            <th style="width: 200px;">Tanggal Gojukai<br/>Tanggal Kankai</th>
            <th style="width: 200px;">Status Hubungan Dalam Keluarga</th>
            <th style="width: 200px;">Keterangan</th>
        </tr>

        <?php
        $dblist->select('tb_relationship', '*', NULL, 'tb_family_relationship_id=' . $_GET['id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
        $listhub = $dblist->getResult();
        $no = 0;
        foreach ($listhub as $array_list_query) {
            $no++;
            ?>
            <tr>
                <td  class="tableno"><?= idListViewTarget($array_list_query['tb_relationship_relationship_id'], "personal_identity", "tb_personal_identity_name"); ?><br/><?= idListViewTarget($array_list_query['tb_relationship_relationship_id'], "personal_identity", "tb_personal_identity_birth_date"); ?></td>
                <td><?= idListViewTarget($array_list_query['tb_relationship_relationship_id'], "personal_identity", "tb_personal_identity_name"); ?></td>
                <td><?= $array_list_query['tb_relationship_relation_code']; ?></td>
                <td><?= $array_list_query['tb_relationship_relation_code']; ?></td>
                <td><?= $array_list_query['tb_relationship_relation_code']; ?></td>
            </tr>
        <?php } ?>


    </table>
</div>