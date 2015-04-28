
<?= inputGeneral('....', 'Kode User', 'user', 'Some hint here', $_GET['action']); ?>

<?= inputPassword('....', 'Password', 'password', 'Some hint here', $_GET['action']); ?>
<?= inputGeneral('....', 'Nama User', 'name', 'Some hint here', $_GET['action']); ?>

 <?= inputLov('Group', 'lovgroup', 'lovgroups', 'group', $_GET['action'], '', ''); ?>

<div class="form-actions row-fluid">
<div class="span7 offset3">
    <button type="button" onclick="saveUser('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
</div>
</div>