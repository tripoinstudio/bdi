<?= inputGeneral('....', NAMA_SEKARANG, 'nama_sekarang', 'true', $_GET['action']); ?>
<?= inputGeneral('....', NAMA_PANGGILAN, 'nama_panggilan', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TTL, '
                    <input type="text"  id="place_of_birth" name="truetitles[]" placeholder="Tempat" class="span4" />
                    <input type="text"  id="birth_date" name="truetitles[]" value="' . date('d-m-Y') . '" class="span4" onkeydown="hideDatepicker(event,this);"/>
                    ');
?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=GENDER;?></label>
    <div class="controls span9">
        <label class="radio inline">
            <input type="radio" id="gender"  value="1" name="gender" />
            <span style="padding-left: 10px;">Laki-laki </span>
        </label>
        <label class="radio inline">
            <input type="radio" id="gender" value="2" name="gender" checked="CHECKED"/>
            <span style="padding-left: 10px;">Perempuan </span>
        </label>
        <span class="help-inline" name="namens[]" id="genderns">
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
        <span class="help-inline" name="namens[]" id="lovsstatuscountryns"></span>
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


<?= inputGeneral('628567332614', NO_HANDPHONE, 'no_handphone', 'true', $_GET['action'],'','onkeypress="return maxTenNumber(event,this)"'); ?>
<?= inputGeneral('....', EMAIL, 'email', 'true', $_GET['action']); ?>


