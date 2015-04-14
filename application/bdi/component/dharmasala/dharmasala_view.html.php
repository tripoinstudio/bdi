<!-- place holder, Label, idfield,  -->
<?php
$provinceid = idListViewManual('SELECT s.tb_sentra_province_id FROM tb_cetya p JOIN tb_sentra s ON p.tb_cetya_sentra_id = s.tb_sentra_id where p.tb_cetya_id ='.$query1['tb_dharmasala_cetya_id'], "tb_sentra_province_id");
?>
<?= inputGeneralTemplate('Pilih Daerah',idListViewManual('select * from tb_province where tb_province_id='.$provinceid, "tb_province_name")); ?>
<?= inputGeneralViewLov($query1['tb_dharmasala_cetya_id'], 'Pilih Cetya', 'cetya', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_dharmasala_name'], 'Nama Dharmasala', 'name', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_dharmasala_remarks'], 'Description', 'remarks', 'true', $_GET['action']); ?>
