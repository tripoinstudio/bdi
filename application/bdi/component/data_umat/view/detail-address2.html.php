<?php

$dbumat->select('tb_data_umat_pembagian', '*', NULL, 'tb_data_umat_id=' . $query1['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keumatan_pembagian = $dbumat->getResult();
?>
<?php

$no = 1;

foreach ($list_keumatan_pembagian as $array_pembagian) {
    ?>
	
	<?= inputGeneralViewLov($array_pembagian['tb_province_id'], 'Provinsi', 'province', 'true', $_GET['action']); ?>
	<?= inputGeneralViewLov($array_pembagian['tb_sentra_id'], 'Sentra', 'sentra', 'true', $_GET['action']); ?>
	<?= inputGeneralViewLov($array_pembagian['tb_distrik_id'], 'Distrik', 'distrik', 'true', $_GET['action']); ?>
	<?= inputGeneralViewLov($array_pembagian['tb_cetya_id'], 'Cetya', 'cetya', 'true', $_GET['action']); ?>
	<?= inputGeneralViewLov($array_pembagian['tb_dharmasala_id'], 'Provinsi', 'dharmasala', 'true', $_GET['action']); ?>



<?php } ?>
