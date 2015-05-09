<?= inputLovEdit('tb_country_id', 'tb_country_name',$query1['tb_country_id'], 'Pilih Negara','country','true', $_GET['action'], 'false', ''); ?>
<?= inputGeneral($query1['tb_province_code'], 'Code Provinsi', 'name', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_province_name'], 'Nama Provinsi', 'name', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_province_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>

<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-actions">
    <button type="button" onclick="saveProvince('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>