
<?php
if ($query1['tb_data_umat_keaktifan'] == 1) {
    $dtng_ke1 = 'checked="checked"';
} else if ($query1['tb_data_umat_keaktifan'] == 2) {
    $dtng_ke2 = 'checked="checked"';
} 

if ($query1['tb_data_umat_dana_goku'] == 1) {
    $danaprmt1 = 'checked="checked"';
} else if ($query1['tb_data_umat_dana_goku'] == 2) {
    $danaprmt2 = 'checked="checked"';
} 
//inputGeneralView($mariage, STATUS_MARRIAGE, 'marriage_status', 'true', $_GET['action']);
?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=DTNG_KE;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="dtng_ke" <?=$dtng_ke1;?> value="1" name="dtng_ke" />
            <span style="padding-left: 10px;">Ya </span>
        </label>
        <label class="radio ">
            <input type="radio" id="dtng_ke" value="2" <?=$dtng_ke2;?> name="dtng_ke"/>
            <span style="padding-left: 10px;">Tidak </span>
        </label>
        
    </div>
</div>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=DANAPRMT;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="danaprmt" <?=$danaprmt1;?> value="1" name="danaprmt" />
            <span style="padding-left: 10px;">Ya </span>
        </label>
        <label class="radio ">
            <input type="radio" id="danaprmt" <?=$danaprmt2;?> value="2" name="danaprmt"/>
            <span style="padding-left: 10px;">Tidak </span>
        </label>
       

    </div>
</div>
<?= inputGeneral($query1['tb_data_umat_tanggung_jawab'], TNGJWB, 'tngjwb', 'true', $_GET['action']); ?>
