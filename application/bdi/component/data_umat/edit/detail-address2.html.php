<?php

$dbumat->select('tb_data_umat_pembagian', '*', NULL, 'tb_data_umat_id=' . $query1['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keumatan_pembagian = $dbumat->getResult();
?>
<?php

$no = 1;

foreach ($list_keumatan_pembagian as $array_pembagian) {
    ?>
	
	<?= inputLovEdit('tb_province_id', 'tb_province_name',$array_pembagian['tb_province_id'], DAERAH,'province','true', $_GET['action'], 'false', 'onchange="getSentraLov(this,0);"'); ?>
	<?= inputGeneralTemplate(SENTRA, '<div style="height:5px;" id="sentraLov">'
        . ''
        . '</div>
		<input type="hidden" value="'.$array_pembagian['tb_province_id'].'" id="idProvinsi"/>
		<input type="hidden" value="'.$array_pembagian['tb_sentra_id'].'" id="idSentra"/>'); ?>
<?= inputGeneralTemplate(DISTRIK, '<div style="height:5px;" id="distrikLov">'
        . ''
        . '</div><input type="hidden" value="'.$array_pembagian['tb_distrik_id'].'" id="idDistrik"/>'); ?>
<?= inputGeneralTemplate(CETYA, '<div style="height:5px;" id="cetyaLov">'
        . ''
        . '</div><input type="hidden" value="'.$array_pembagian['tb_cetya_id'].'" id="idCetya"/>'); ?>
<?= inputGeneralTemplate(DHARMASALA, '<div style="height:5px;" id="dharmasalaLov">'
        . ''
        . '</div><input type="hidden" value="'.$array_pembagian['tb_dharmasala_id'].'" id="idDharmasala"/>'); ?>
	<?php } ?>