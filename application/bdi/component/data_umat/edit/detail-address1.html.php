
<?php

$dbumat->select('tb_data_keumatan', '*', NULL, 'tb_data_umat_id=' . $query1['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_keumatan = $dbumat->getResult();
?>
<?php
$no = 1;
foreach ($list_keumatan as $array_keumatan) {
//$mariage;
if ($array_keumatan['tb_data_keumatan_marriage_status'] == 1) {
    $mariage1 = 'checked="checked"';
} else if ($array_keumatan['tb_data_keumatan_marriage_status'] == 2) {
    $mariage2 = 'checked="checked"';
} else {
    $mariage3 = 'checked="checked"';
}
//inputGeneralView($mariage, STATUS_MARRIAGE, 'marriage_status', 'true', $_GET['action']);
?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=STATUS_MARRIAGE;?></label>
    <div class="controls span9">
        
		<label class="radio inline">
            <input type="radio" onclick="marriageStatus();" id="lovsstatus" <?=$mariage1;?> value="1" name="lovsstatus">
            <span style="padding-left: 10px;">Kawin </span>

        </label>
        <label class="radio inline">
            <input type="radio" onclick="marriageStatus();" id="lovsstatus" <?=$mariage2;?>  value="2" name="lovsstatus">
            <span style="padding-left: 10px;">Belum Kawin </span>

        </label>
		<label class="radio inline">
            <input type="radio" onclick="marriageStatus();" id="lovsstatus" <?=$mariage3;?>  value="3" name="lovsstatus">
            <span style="padding-left: 10px;">Cerai </span>

        </label>
    </div>
</div>
<?php
if ($array_keumatan['tb_data_keumatan_nichiren_upacara'] == 1) {
    $upacarashosu1 = 'checked="checked"';
} else if ($array_keumatan['tb_data_keumatan_nichiren_upacara'] == 2) {
    $upacarashosu2 = 'checked="checked"';
} 
?>
<div id="group_marriage_status">
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=U_N_S;?></label>
    <div class="controls span9">
        <label class="radio inline">
            <input type="radio" id="upacarashosu" <?=$upacarashosu1;?> value="1" name="upacarashosu">
            <span style="padding-left: 10px;">Ya </span>

        </label>
        <label class="radio inline">
            <input type="radio" id="upacarashosu" <?=$upacarashosu2;?>  value="2" name="upacarashosu">
            <span style="padding-left: 10px;">Tidak </span>

        </label>

    </div>
</div>

<?= inputGeneral($array_keumatan['tb_data_keumatan_nichiren_tahun'], TAHUN, 'nichiren_shosu_year', 'true', $_GET['action'],null,'onkeydown="hideDatepicker(event,this);"'); ?>
<?= inputGeneral($array_keumatan['tb_data_keumatan_nichiren_tempat'], TEMPAT, 'nichiren_shosu_place', 'true', $_GET['action']); ?>
<?= inputGeneral($array_keumatan['tb_data_keumatan_nichiren_pemimpin'], PEMIMPIN, 'nichiren_shosu_leader', 'true', $_GET['action']); ?>
</div>

<?= inputGeneral($array_keumatan['tb_data_keumatan_gojukai'], TAHUN_GOJUKAI, 'gojukai_date', 'true', $_GET['action'],null,'onkeydown="hideDatepicker(event,this);"'); ?>
<? //= inputGeneral('....', T_R_G, 'gohozon_accept_date', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate('<b>'.T_R_G.'</b>', ''); ?>
<div class="self-border-white">
<?= inputGeneral($array_keumatan['tb_data_keumatan_gohonzon_okatagi'], T_T_OK_GO, 'okataki_gohozon', 'true', $_GET['action'],'width:98%;','onkeydown="hideDatepicker(event,this);"'); ?>
<?= inputGeneral($array_keumatan['tb_data_keumatan_gohonzon_omamori'], T_T_OM_GO, 'omamori_gohozon', 'true', $_GET['action'],'width:98%;','onkeydown="hideDatepicker(event,this);"'); ?>
<?= inputGeneral($array_keumatan['tb_data_keumatan_gohonzon_tokubetsu'], T_T_TO_GO, 'tokubetsu_gohozon', 'true', $_GET['action'],'width:98%;','onkeydown="hideDatepicker(event,this);"'); ?>
</div>
<br/>
<?= inputGeneral($array_keumatan['tb_data_keumatan_kankai'], TAHUN_KANKAI, 'kankai_date', 'true', $_GET['action'],null,'onkeydown="hideDatepicker(event,this);"'); ?>
<?php
if ($array_keumatan['tb_data_keumatan_gohifu'] == 1) {
    $me_gohifu1 = 'checked="checked"';
} else if ($array_keumatan['tb_data_keumatan_gohifu'] == 2) {
    $me_gohifu2 = 'checked="checked"';
} 
?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=ME_GOHIFU;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="me_gohifu" value="1" <?=$me_gohifu1;?> name="me_gohifu" onclick="tdpStatus();">
            <span style="padding-left: 10px;">Ya </span>

        </label>
        <label class="radio ">
            <input type="radio" id="me_gohifu"  value="2"  <?=$me_gohifu2;?> name="me_gohifu" onclick="tdpStatus();">
            <span style="padding-left: 10px;">Tidak </span>

        </label>

    </div>
</div>
<div id="group-tdp">
<?= inputGeneralTemplate(TDP, '
                    <input type="text"  id="t_tahun" name="truetitles[]" placeholder="" class="span4" />
                    <input type="text"  id="t_penyakit" name="truetitles[]" value="" class="span4" />
                    ');
?>
</div>
<?php
}
?>