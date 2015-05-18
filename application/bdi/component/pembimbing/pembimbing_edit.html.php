<?= inputGeneral($query1['tb_pembimbing_name'], 'Adviser Name', 'name', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_pembimbing_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>

<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-actions">
    <button type="button" onclick="savePembimbing('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>