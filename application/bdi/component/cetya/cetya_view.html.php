<?= inputGeneralTemplate('Pilih Daerah',idListViewManual('SELECT s.tb_sentra_id, p.tb_province_code, p.tb_province_name tb_sentra_name FROM tb_province p JOIN tb_sentra s ON p.tb_province_id = s.tb_sentra_province_id WHERE s.tb_sentra_id ='.$query1['tb_cetya_sentra_id'], "tb_sentra_name")); ?>
<?= inputGeneralView($query1['tb_cetya_name'], 'Nama cetya', 'name', 'Some hint here', $_GET['action']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneralView($query1['tb_cetya_remarks'], 'Remarks', 'remarks', 'Some hint here', $_GET['action']); ?>
