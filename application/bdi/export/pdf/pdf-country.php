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
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">LIST DATA COUNTRY</div>
    <br/>
    <table class="table">
            <tr>
                <th style="height: 30px;width: 20px;">No</th>
                <th style="width: 200px;">Code</th>
                <th style="width: 200px;">Name</th>
            </tr>

            <?php
            $no = 0;
            foreach ($list_query as $array_list_query) {
                $no++;
                ?>
                <tr>
                    <td  class="tableno"><?= $no; ?></td>
                    <td><?= $array_list_query['tb_country_code']; ?></td>
                    <td><?= $array_list_query['tb_country_name']; ?></td>
                </tr>
            <?php } ?>


    </table>
</div>