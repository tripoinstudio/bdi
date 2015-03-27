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
$dblist->select('tb_country', '*', NULL, $parentuser); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();

$length_list = count($list_query);
?>
<link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">LIST DATA COUNTRY</div>
<table>
    <thead>
    <tr>
        <td>No</td>
        <td>Code</td>
        <td>Name</td>
    </tr>
    </thead>
    <tbody id="listdata">
        
        <?php
            $no = 0;
            foreach ($list_query as $array_list_query) {
                $no++;
                ?>
                <tr>
                    <td><?= $no; ?></td>
                    <td><?= $array_list_query['tb_country_code']; ?></td>
                    <td><?= $array_list_query['tb_country_name']; ?></td>
                </tr>
            <?php } ?>
    </tbody>
    
    
</table>