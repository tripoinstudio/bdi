<?= inputGeneral('....', NAMA_SEKARANG, 'nama_sekarang', 'true', $_GET['action']); ?>
<?= inputGeneral('....', NAMA_PANGGILAN, 'nama_panggilan', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TTL, '
                    <input type="text"  id="place_of_birth" name="truetitles[]" placeholder="Tempat" class="span4" />
                    <input type="text"  id="birth_date" name="truetitles[]" value="' . date('Y-m-d') . '" class="span4" />
                    ');
?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=GENDER;?></label>
    <div class="controls span9">
        <label class="radio inline">
            <input type="radio" id="gender"  value="1" name="radio1" />
            <span style="padding-left: 10px;">Laki-laki </span>
        </label>
        <label class="radio inline">
            <input type="radio" id="gender" value="2" name="radio1" checked="CHECKED"/>
            <span style="padding-left: 10px;">Perempuan </span>
        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=KEWARGANEGARAAN;?></label>
    <div class="controls span9">
        <select id='lovsstatuscountry'  class='input-large m-wrap'> 
            <option value='0'>Select ...</option>
            <option value="1">WNI</option>
            <option value="2">WNA</option>
        </select>
        <span class="help-inline" name="namens[]" id="statusns"></span>
    </div>
</div>
<? //= inputLovNew('tb_country_id', 'tb_country_name', '', 'Kewarganegaraan', 'country', 'true', $_GET['action'], 'false', '', ''); ?>
<?= inputGeneral('....', 'Pekerjaan', 'job', 'true', $_GET['action']); ?>
<?= inputGeneral('....', NO_IDEN, 'no_iden', 'true', $_GET['action']); ?>
<?= inputGeneral('....', ALAMAT_KTP, 'alamat_ktp', 'true', $_GET['action']); ?>
<?= inputGeneral('....', ALAMAT_TINGGAL, 'alamat_tinggal', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TELP_RUMAH, '
                    <input type="text"  id="first_telp_rumah" name="truetitles[]" onkeypress="return maxFourNumber(event,this)" placeholder="021" class="span2" /> - 
                    <input type="text"  id="last_telp_rumah" name="truetitles[]" onkeyup="return maxEightNumber(event,this);" placeholder="12345678" class="span6" />
                    ');
?>
<? //= inputGeneral('....', TELP_RUMAH, 'telp_rumah', 'true', $_GET['action']); ?>

<?= inputGeneral('....', ALAMAT_TINGGAL1, 'alamat_tinggal1', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TELP_RUMAH1, '
                    <input type="text"  id="first_telp_rumah1" name="truetitles[]" onkeypress="return maxFourNumber(event,this)" placeholder="021" class="span2" /> - 
                    <input type="text"  id="last_telp_rumah1" name="truetitles[]" onkeyup="return maxEightNumber(event,this);" placeholder="12345678" class="span6" />
                    ');
?>
<?//= inputGeneral('....', TELP_RUMAH1, 'telp_rumah1', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TGL_PRBH_ALMT1, 'tgl_prbh_almt1', 'true', $_GET['action']); ?>

<?= inputGeneral('....', ALAMAT_TINGGAL2, 'alamat_tinggal2', 'true', $_GET['action']); ?>
<? //= inputGeneral('....', TELP_RUMAH2, 'telp_rumah2', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TELP_RUMAH2, '
                    <input type="text"  id="first_telp_rumah2" name="truetitles[]" onkeypress="return maxFourNumber(event,this)" placeholder="021" class="span2" /> - 
                    <input type="text"  id="last_telp_rumah2" name="truetitles[]" onkeyup="return maxEightNumber(event,this);" placeholder="12345678" class="span6" />
                    ');
?>
<?= inputGeneral('....', TGL_PRBH_ALMT2, 'tgl_prbh_almt2', 'true', $_GET['action']); ?>

<?= inputGeneral('....', NO_HANDPHONE, 'no_handphone', 'true', $_GET['action']); ?>
<?= inputGeneral('....', EMAIL, 'email', 'true', $_GET['action']); ?>

<input type="hidden"  id="code" name="truetitles[]" value="<?=saveAutoCode();?>" class="span4" />
