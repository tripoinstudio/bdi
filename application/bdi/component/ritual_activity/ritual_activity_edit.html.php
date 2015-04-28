<?= inputLov('Province', 'lovprovince', 'lovprovinces', 'province', $_GET['action'],'idLovprovince', $query1['tb_sentra_province_id']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneral($query1['tb_sentra_remarks'], 'Remarks', 'remarks', 'true', $_GET['action']); ?>
 
<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-horizontal">
    <button type="button" onclick="saveSentra('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>