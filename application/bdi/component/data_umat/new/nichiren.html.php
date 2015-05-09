

<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=DTNG_KE;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="dtng_ke"  value="1" name="dtng_ke" />
            <span style="padding-left: 10px;">Ya </span>
        </label>
        <label class="radio ">
            <input type="radio" id="dtng_ke" value="2" name="dtng_ke" checked="CHECKED"/>
            <span style="padding-left: 10px;">Tidak </span>
        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=DANAPRMT;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="danaprmt"  value="1" name="danaprmt" />
            <span style="padding-left: 10px;">Ya </span>
        </label>
        <label class="radio ">
            <input type="radio" id="danaprmt" value="2" name="danaprmt" checked="CHECKED"/>
            <span style="padding-left: 10px;">Tidak </span>
        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>
<?= inputGeneral('....', TNGJWB, 'tngjwb', 'true', $_GET['action']); ?>
