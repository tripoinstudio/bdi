

<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=STATUS_MARRIAGE;?></label>
    <div class="controls span9">
        <select id='lovsstatus'  class='input-large m-wrap'> 
            <option value='0'>Select ...</option>
            <option value="1">Kawin</option>
            <option value="2">Belum Kawin</option>
            <option value="3">Cerai</option>
        </select>
        <span class="help-inline" name="namens[]" id="statusns"></span>
    </div>
</div>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=U_N_S;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="upacarashosu" value="1" name="radio2">
            <span style="padding-left: 10px;">Ya </span>

        </label>
        <label class="radio ">
            <input type="radio" id="upacarashosu"  value="2" name="radio2">
            <span style="padding-left: 10px;">Tidak </span>

        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>

<?= inputGeneral('....', TAHUN, 'nichiren_shosu_year', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TEMPAT, 'nichiren_shosu_place', 'true', $_GET['action']); ?>
<?= inputGeneral('....', PEMIMPIN, 'nichiren_shosu_leader', 'true', $_GET['action']); ?>

<?= inputGeneral('....', TAHUN_GOJUKAI, 'gojukai_date', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TAHUN_KANKAI, 'kankai_date', 'true', $_GET['action']); ?>
<?= inputGeneral('....', T_R_G, 'gohozon_accept_date', 'true', $_GET['action']); ?>
<?= inputGeneral('....', T_T_OK_GO, 'okataki_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral('....', T_T_OM_GO, 'omamori_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral('....', T_T_TO_GO, 'tokubetsu_gohozon', 'true', $_GET['action']); ?>

