<?= inputGeneral($query1['tb_country_code'], 'Kode Country', 'code', 'true', $_GET['action']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneral($query1['tb_country_name'], 'Nama Country', 'name', 'true', $_GET['action']); ?>

<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-horizontal">
    <button type="button" onclick="saveUser('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>