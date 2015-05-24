
<b><?= TITLE_KELUARGA; ?></b>
<br/>
<br/>
<br/>
<?php
$idhub1 = idListViewTarget($query1['tb_data_umat_hub1'],'family_relationship','tb_data_umat_id');
echo inputGeneralTemplate('Nama', '<div class="control-group" id="lovName"></div>
<input type="hidden" value="'.$query1['tb_data_umat_hub1'].'" id="idname1"/>'); 
//echo inputGeneralViewLov($idhub1, 'Nama', 'data_umat', 'true', $_GET['action'],'','tb_data_umat_nama_ktp'); 
?>
<button onclick="return addName();" id="addNameBtn" class="btn btn-primary" data-original-title="" title=""><i class="icon-plus icon-white"></i> Tambah Nama</button>
<div class="self-border-white">
 <div class="control-group" id="frmItem">
<?php
$no=0;
$dbumat->sql('SELECT r.`tb_relationship_id`,r.`tb_relationship_name`,r.`tb_data_umat_id`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON r.`tb_relationship_relationship_id`=f.`tb_family_relationship_id` WHERE f.`tb_family_relationship_id`='.$query1['tb_data_umat_hub1']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keluarga = $dbumat->getResult();
foreach ($list_keluarga as $array_keluarga) {
	$no = $no + 1;
	?>
	<div class="form-row control-group row-fluid" id="tritem<?=$no;?>">
    <label class="control-label span1 ">Nama 
	
     </label>    
	<input type="hidden"  id="nameIdKel<?=$no;?>" value="<?=$array_keluarga['tb_relationship_id'];?>" name="name" placeholder="" class="span3" /> 
	<div class="control-group span3"  id="lovName<?=$no;?>"></div>

    <label class="control-label span2">Hubungan 

	<input type="hidden"  id="idDataUmat<?=$no;?>" value="<?=$array_keluarga['tb_data_umat_id'];?>" />
	
     </label>
	<select id="nameHub<?=$no;?>" class="input-large m-wrap" value="<?=$array_keluarga['tb_relationship_relation_code'];?>" data-placeholder="Choose a Name" tabindex="1">
	<?=optionHubungan($array_keluarga['tb_relationship_relation_code']);?>
	</select>
<a href="javascript:void(0)" onclick="return delkel(<?=$no;?>,<?=$array_keluarga['tb_relationship_id'];?>)" data-original-title="Remove" data-placement="top" rel="tooltip" class="btn  btn-danger"><i class="gicon-remove "></i></a> 
    </div>
	
	
	<?php
//inputGeneralTemplate(Nama, $array_keluarga['tb_data_umat_nama_ktp'] . ' Hubungan ' . $array_keluarga['tb_relationship_relation_code'] . '');
}
?>
</div>

</div>
<br/>

<b><?= TITLE_KELUARGA2; ?></b>
<br/>
<br/>
<br/>

<?php
$idhub2 = idListViewTarget($query1['tb_data_umat_hub2'],'family_relationship','tb_data_umat_id');
//echo $idhub2;
echo inputGeneralTemplate('Nama', '<div class="control-group" id="lovNames"></div>
<input type="hidden" value="'.$query1['tb_data_umat_hub2'].'" id="idname2"/>'); 
//echo inputGeneralViewLov($idhub2, 'Nama', 'data_umat', 'true', $_GET['action'],'','tb_data_umat_nama_ktp'); 
?>

<button onclick="return addNames();" id="addNamesBtn" class="btn btn-primary" data-original-title="" title=""><i class="icon-plus icon-white"></i> Tambah Nama</button>

<div class="self-border-white">
<div class="control-group" id="frmItems">
<?php
$no=0;
//$dbumat->sql('SELECT r.`tb_relationship_name`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON f.`tb_family_relationship_id`=r.`tb_family_relationship_id` INNER JOIN `tb_data_umat` d ON f.`tb_data_umat_id`='.$query1['tb_data_umat_id'].' WHERE f.`tb_family_relationship_type`=2'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$dbumat->sql('SELECT r.`tb_relationship_id`,r.`tb_relationship_name`,r.`tb_data_umat_id`,r.`tb_relationship_relation_code`,f.`tb_family_relationship_type` FROM `tb_relationship` r INNER JOIN `tb_family_relationship` f ON r.`tb_relationship_relationship_id`=f.`tb_family_relationship_id` WHERE f.`tb_family_relationship_id`='.$query1['tb_data_umat_hub2']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keluargas = $dbumat->getResult();
foreach ($list_keluargas as $array_keluarga2) {
	$no = $no + 1;
	?>
	<div class="form-row control-group row-fluid" id="tritems<?=$no;?>">
    <label class="control-label span1 ">Nama
	
     </label>    
<input type="hidden"  id="nameIdKels<?=$no;?>" value="<?=$array_keluarga2['tb_relationship_id'];?>" name="name" placeholder="" class="span3" />
<div class="control-group span3"  id="lovNames<?=$no;?>"></div>
    <label class="control-label span2">Hubungan 
	<input type="hidden"  id="idDataUmats<?=$no;?>" value="<?=$array_keluarga2['tb_data_umat_id'];?>" />
	
     </label>
	
<select id="nameHubs<?=$no;?>" class="input-large m-wrap" data-placeholder="Choose a Name" tabindex="1">
	<?=optionHubungan($array_keluarga2['tb_relationship_relation_code']);?>
	</select>
	<a href="javascript:void(0)" onclick="return delkels(<?=$no;?>,<?=$array_keluarga2['tb_relationship_id'];?>)" data-original-title="Remove" data-placement="top" rel="tooltip" class="btn  btn-danger"><i class="gicon-remove "></i></a> 
    </div>
	<?php
//inputGeneralTemplate(Nama, $array_keluarga['tb_data_umat_nama_ktp'] . ' Hubungan ' . $array_keluarga['tb_relationship_relation_code'] . '');
}
?>
</div>
</div>
<input type="hidden" id="counternames" value="<?=count($list_keluargas);?>" />
<input type="hidden" id="countername" value="<?=count($list_keluarga);?>" />