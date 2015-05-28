<?= inputGeneral($query1['user_username'], 'Kode User', 'user', 'Some hint here', $_GET['action']); ?>

<?= inputPassword($query1['user_password'], 'Password', 'password', 'Some hint here', $_GET['action']); ?>
<?= inputGeneral($query1['user_fullname'], 'Nama User', 'name', 'Some hint here', $_GET['action']); ?>

 <?php //= inputLov('Group', 'lovgroup', 'lovgroups', 'group', $_GET['action'],'idLovgroup', $query1['tb_group_id']); ?>
 <?= inputLovEdit('tb_group_id', 'tb_group_name',$query1['tb_group_id'], 'Group','group','true', $_GET['action'], 'false', 'onchange="sekdaChange();"'); ?>
 <?php
 
 $dbedit->select('tb_user_province', '*', NULL, 'user_id=' . $query1['user_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$detail = $dbedit->getResult();
foreach ($detail as $array_user) {
	$provinceid = $array_user['tb_province_id'];
}
//if($query1['tb_group_id'] == 4 ){
	echo inputLovEdit('tb_province_id', 'tb_province_name',$provinceid, 'Pilih Daerah Sekda','province','true', $_GET['action'], 'false', '');
 ?>
 <?php //= inputLovEdit('tb_province_id', 'tb_province_name',$provinceid, 'Pilih Daerah Sekda','province','true', $_GET['action'], 'false', ''); ?>
<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-actions">
    <button type="button" onclick="saveUser('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>