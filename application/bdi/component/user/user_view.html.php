<?= inputGeneral($query1['user_username'], 'Kode User', 'user', 'Some hint here', $_GET['action']); ?>

<?= inputPassword($query1['user_password'], 'Password', 'password', 'Some hint here', $_GET['action']); ?>
<?= inputGeneral($query1['user_fullname'], 'Nama User', 'name', 'Some hint here', $_GET['action']); ?>

 <?= inputLov('Group', 'lovgroup', 'lovgroups', 'group', $_GET['action'],'idLovgroup', $query1['tb_group_id']); ?>
