<b><?= TITLE_KELUARGA; ?></b>
<br/>
<br/>
<br/>
<?php
$idhub1 = idListViewTarget($query1['tb_data_umat_hub1'],'family_relationship','tb_data_umat_id');
echo inputGeneralViewLov($idhub1, 'Nama', 'data_umat', 'true', $_GET['action'],'','tb_data_umat_nama_ktp'); 
?>
<div class="self-border-white">
 
<?php
$no=0;
$dbumat->sql('SELECT r.`tb_relationship_name`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON r.`tb_relationship_relationship_id`=f.`tb_family_relationship_id` WHERE f.`tb_family_relationship_id`='.$query1['tb_data_umat_hub1']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keluarga = $dbumat->getResult();
foreach ($list_keluarga as $array_keluarga) {
	$no = $no + 1;
	?>
	<div class="form-row control-group row-fluid">
    <label class="control-label span4 ">Nama 
	<span style="padding-left: 30px;"><?=$array_keluarga['tb_relationship_name'];?></span>
     </label>    

    <label class="control-label span4">Hubungan 
	<span style="padding-left: 30px;"><?=$array_keluarga['tb_relationship_relation_code'];?></span>
     </label>
	

    </div>
	<?php
//inputGeneralTemplate(Nama, $array_keluarga['tb_data_umat_nama_ktp'] . ' Hubungan ' . $array_keluarga['tb_relationship_relation_code'] . '');
}
?>

</div>
<br/>

<b><?= TITLE_KELUARGA2; ?></b>
<br/>
<br/>
<br/>

<?php
$idhub2 = idListViewTarget($query1['tb_data_umat_hub2'],'family_relationship','tb_data_umat_id');
//echo $idhub2;
echo inputGeneralViewLov($idhub2, 'Nama', 'data_umat', 'true', $_GET['action'],'','tb_data_umat_nama_ktp'); 
?>



<div class="self-border-white">
<?php
$no=0;
//$dbumat->sql('SELECT r.`tb_relationship_name`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON f.`tb_family_relationship_id`=r.`tb_family_relationship_id` INNER JOIN `tb_data_umat` d ON f.`tb_data_umat_id`='.$query1['tb_data_umat_id'].' WHERE f.`tb_family_relationship_type`=2'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$dbumat->sql('SELECT r.`tb_relationship_name`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON r.`tb_relationship_relationship_id`=f.`tb_family_relationship_id` WHERE f.`tb_family_relationship_id`='.$query1['tb_data_umat_hub2']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keluarga = $dbumat->getResult();
foreach ($list_keluarga as $array_keluarga) {
	$no = $no + 1;
	?>
	<div class="form-row control-group row-fluid">
    <label class="control-label span4 ">Nama 
	<span style="padding-left: 30px;"><?=$array_keluarga['tb_relationship_name'];?></span>
     </label>    

    <label class="control-label span4">Hubungan 
	<span style="padding-left: 30px;"><?=$array_keluarga['tb_relationship_relation_code'];?></span>
     </label>
	

    </div>
	<?php
//inputGeneralTemplate(Nama, $array_keluarga['tb_data_umat_nama_ktp'] . ' Hubungan ' . $array_keluarga['tb_relationship_relation_code'] . '');
}
?>
</div>