<?= inputGeneralViewLov($query1['tb_country_id'], 'Pilih Negara', 'country', 'true', $_GET['action']); ?>
<?= inputGeneralViewLov($query1['tb_province_id'], 'Pilih Province', 'province', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_city_name'], 'City Name', 'name', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_city_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>
