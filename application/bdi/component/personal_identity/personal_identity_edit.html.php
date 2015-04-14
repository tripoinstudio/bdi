<?= inputLovEdit('tb_country_id', 'tb_country_name',$query1['tb_country_id'], 'Pilih Negara','country','true', $_GET['action'], 'false', ''); ?>
<?= inputLovEdit('tb_province_id', 'tb_province_name',$query1['tb_province_id'], 'Pilih Province','province','true', $_GET['action'], 'false', ''); ?>

<?= inputGeneral($query1['tb_city_name'], 'Nama City', 'name', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_city_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>


<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-horizontal">
    <button type="button" onclick="saveUser('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>