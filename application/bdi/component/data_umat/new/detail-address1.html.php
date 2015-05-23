

<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=STATUS_MARRIAGE;?></label>
    <div class="controls span9">
        
		<label class="radio inline">
            <input type="radio" onclick="marriageStatus();" id="lovsstatus"  value="1" name="lovsstatus">
            <span style="padding-left: 10px;">Kawin </span>

        </label>
        <label class="radio inline">
            <input type="radio" onclick="marriageStatus();" id="lovsstatus"  checked="checked"  value="2" name="lovsstatus">
            <span style="padding-left: 10px;">Belum Kawin </span>

        </label>
		<label class="radio inline">
            <input type="radio" onclick="marriageStatus();" id="lovsstatus"  value="3" name="lovsstatus">
            <span style="padding-left: 10px;">Cerai </span>

        </label>
        <span class="help-inline" name="namens[]" id="lovsstatusns"></span>
    </div>
</div>
<div id="group_marriage_status">
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=U_N_S;?></label>
    <div class="controls span9">
        <label class="radio inline">
            <input type="radio" onclick="upacaraShosu();" id="upacarashosu" value="1" name="upacarashosu">
            <span style="padding-left: 10px;">Ya </span>

        </label>
        <label class="radio inline">
            <input type="radio" onclick="upacaraShosu();" id="upacarashosu"  value="2"  checked="checked" name="upacarashosu">
            <span style="padding-left: 10px;">Tidak </span>

        </label>
        <span class="help-inline" name="namens[]" id="upacarashosuns">
        </span>

    </div>
</div>
<div id="group_upacarashosu">
<?= inputGeneral('....', TAHUN, 'nichiren_shosu_year', 'true', $_GET['action'],null,'onkeydown="hideDatepicker(event,this);"'); ?>
<?= inputGeneral('....', TEMPAT, 'nichiren_shosu_place', 'true', $_GET['action']); ?>
<?= inputGeneral('....', PEMIMPIN, 'nichiren_shosu_leader', 'true', $_GET['action']); ?>
</div>
</div>

<br />
<hr />
<br />

<?= inputGeneral('....', TAHUN_GOJUKAI, 'gojukai_date', 'true', $_GET['action'],null,'onkeydown="hideDatepicker(event,this);"'); ?>

<br />
<hr />
<br />

<? //= inputGeneral('....', T_R_G, 'gohozon_accept_date', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate('<b>'.T_R_G.'</b>', ''); ?>
<!--<div class="self-border-white">-->
<?= inputGeneral('....', T_T_OK_GO, 'okataki_gohozon', 'true', $_GET['action'],'width:98%;','onkeydown="hideDatepicker(event,this);"'); ?>
<?= inputGeneral('....', T_T_OM_GO, 'omamori_gohozon', 'true', $_GET['action'],'width:98%;','onkeydown="hideDatepicker(event,this);"'); ?>
<?= inputGeneral('....', T_T_TO_GO, 'tokubetsu_gohozon', 'true', $_GET['action'],'width:98%;','onkeydown="hideDatepicker(event,this);"'); ?>
<!--</div>-->
<br/>

<br />
<hr />
<br />

<?= inputGeneral('....', TAHUN_KANKAI, 'kankai_date', 'true', $_GET['action'],null,'onkeydown="hideDatepicker(event,this);"'); ?>

<br />
<hr />
<br />

<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=ME_GOHIFU;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="me_gohifu" value="1" name="me_gohifu" onclick="tdpStatus();">
            <span style="padding-left: 10px;">Ya </span>

        </label>
        <label class="radio ">
            <input type="radio" id="me_gohifu"  value="2" name="me_gohifu" checked="checked" onclick="tdpStatus();">
            <span style="padding-left: 10px;">Tidak </span>

        </label>
        <span class="help-inline" name="namens[]" id="me_gohifuns">
        </span>

    </div>
</div>
<div id="group-tdp">
<?= inputGeneralTemplate(TDP, '
                    <input type="text"  id="t_tahun" name="truetitles[]" placeholder="" class="span2" />
                    <input type="text"  id="t_penyakit" name="truetitles[]" value="" class="span6" />
                    ');
?>
</div>
