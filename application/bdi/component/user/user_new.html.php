
<?= inputGeneral('....', 'Kode User', 'user', 'Some hint here', $_GET['action']); ?>

<?= inputPassword('....', 'Password', 'password', 'Some hint here', $_GET['action']); ?>
<?= inputGeneral('....', 'Nama User', 'name', 'Some hint here', $_GET['action']); ?>

<?= inputLovEdit('tb_group_id', 'tb_group_name',$query1['tb_group_id'], 'Pilih Group','group','true', $_GET['action'], 'true', '',"SELECT * FROM tb_group"); ?>

<?= inputLovEdit('tb_province_id', 'tb_province_name',$query1['tb_province_id'], 'Pilih Daerah','province','true', $_GET['action'], 'true', '',"SELECT * FROM tb_province"); ?>

<div class="form-actions row-fluid">
<div class="span7 offset3">
    <button type="button" onclick="saveUser('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
</div>
</div>