<?= inputGeneralViewLov($query1['tb_country_id'], 'Pilih Negara', 'country', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_province_code'], 'Province Name', 'code', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_province_name'], 'Province Name', 'name', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_province_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>
