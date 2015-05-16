<?= inputGeneral($query1['user_username'], 'Kode User', 'user', 'Some hint here', $_GET['action']); ?>

<?= inputPassword($query1['user_password'], 'Password', 'password', 'Some hint here', $_GET['action']); ?>
<?= inputGeneral($query1['user_username'], 'Nama User', 'name', 'Some hint here', $_GET['action']); ?>

 <?= inputLov('Daerah', 'lovprovince', 'lovprovinces', 'province', $_GET['action'],'idLovprovince', $query1['tb_province_id']); ?>
<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-actions">
    <button type="button" onclick="saveUser('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>