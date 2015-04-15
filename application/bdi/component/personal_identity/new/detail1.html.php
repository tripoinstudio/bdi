<?= inputGeneral('....', 'Nama Sekarang', 'name', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Jenis Kelamin</label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="gender"  value="1" name="radio1" />
            <span style="padding-left: 10px;">Laki-laki </span>
        </label>
        <label class="radio ">
            <input type="radio" id="gender" value="2" name="radio1" checked="CHECKED"/>
            <span style="padding-left: 10px;">Perempuan </span>
        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>
<?= inputGeneralTemplate('Tempat/Tanggal Lahir', '
                    <input type="text"  id="place_of_birth" name="truetitles[]" placeholder="Tempat" class="span4" />
                    <input type="text"  id="birth_date" name="truetitles[]" value="' . date('Y-m-d') . '" class="span4" />
                    ');
?>
<?= inputGeneral('....', 'Pekerjaan', 'job', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Status Perkawinan</label>
    <div class="controls span9">
        <select id='lovsstatus'  class='input-large m-wrap'> 
            <option value='0'>Select ...</option>
            <option value="1">Kawin</option>
            <option value="2">Belum Kawin</option>
        </select>
        <span class="help-inline" name="namens[]" id="statusns"></span>
    </div>
</div>
<?= inputLovNew('tb_country_id', 'tb_country_name', '', 'Kewarganegaraan', 'country', 'true', $_GET['action'], 'false', '', ''); ?>


<?= inputGeneral('....', 'Tgl Gozukai', 'gojukai_date', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Tgl Terima Gohonzon', 'gohozon_accept_date', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Otakagi Gohonzon', 'okataki_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Omamari Gohonzon', 'omamori_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Tokubetsu Gohonzon', 'tokubetsu_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Tgl Kankai', 'kankai_date', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Upacara Nichiren Shosu</label>
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