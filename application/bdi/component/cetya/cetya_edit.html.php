<?= inputLovEdit('tb_sentra_id', 'tb_sentra_name',$query1['tb_cetya_sentra_id'], 'Pilih Daerah','sentra','true', $_GET['action'], 'true', '','select s.tb_sentra_id, p.tb_province_code, p.tb_province_name tb_sentra_name from tb_province p join tb_sentra s on p.tb_province_id = s.tb_sentra_province_id'); ?>
<?= inputGeneral($query1['tb_cetya_name'], 'Nama Cetya', 'name', 'true', $_GET['action']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneral($query1['tb_cetya_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>

<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-horizontal">
    <button type="button" onclick="saveCetya('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>