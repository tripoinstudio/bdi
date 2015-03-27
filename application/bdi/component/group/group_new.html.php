<?= inputGeneral('', 'Kode Group', 'code', 'true', $_GET['action']); ?>
<?= inputGeneral('', 'Nama Group', 'name', 'true', $_GET['action']); ?>


<div class="form-actions">
    <button type="button" onclick="saveGroup('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>