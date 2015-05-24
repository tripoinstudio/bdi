<?= inputGeneralView($query1['user_username'], 'Kode User', 'user', 'Some hint here', $_GET['action']); ?>

<?= inputPassword($query1['user_password'], 'Password', 'password', 'Some hint here', $_GET['action']); ?>
<?= inputGeneralView($query1['user_fullname'], 'Nama User', 'name', 'Some hint here', $_GET['action']); ?>

 <?php //= inputLov('Group', 'lovgroup', 'lovgroups', 'group', $_GET['action'],'idLovgroup', $query1['tb_group_id']); ?>
 <?= inputGeneralViewLov($query1['tb_group_id'], 'Group', 'group', 'true', $_GET['action']); ?>
  <?php
 
 $dbedit->select('tb_user_province', '*', NULL, 'user_id=' . $query1['user_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$detail = $dbedit->getResult();
foreach ($detail as $array_user) {
	$provinceid = $array_user['tb_province_id'];
}
if($query1['tb_group_id'] == 4 ){
	echo inputGeneralViewLov($provinceid, 'Sekda','province','true', $_GET['action']);
} else {
	
}
