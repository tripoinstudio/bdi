<?= inputGeneral('....', NAMA_SEKARANG, 'name', 'true', $_GET['action']); ?>
<?= inputGeneral('....', ALAMAT_KTP, 'alamat_ktp', 'true', $_GET['action']); ?>
<?= inputGeneral('....', ALAMAT_TINGGAL, 'alamat_tinggal', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TELP_RUMAH, 'telp_rumah', 'true', $_GET['action']); ?>

<?= inputGeneral('....', ALAMAT_TINGGAL1, 'alamat_tinggal1', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TELP_RUMAH1, 'telp_rumah1', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TGL_PRBH_ALMT1, 'tgl_prbh_almt1', 'true', $_GET['action']); ?>

<?= inputGeneral('....', ALAMAT_TINGGAL2, 'alamat_tinggal2', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TELP_RUMAH2, 'telp_rumah2', 'true', $_GET['action']); ?>
<?= inputGeneral('....', TGL_PRBH_ALMT2, 'tgl_prbh_almt2', 'true', $_GET['action']); ?>

<?= inputGeneral('....', NO_HANDPHONE, 'no_handphone', 'true', $_GET['action']); ?>
<?= inputGeneral('....', EMAIL, 'email', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TTL, '
                    <input type="text"  id="place_of_birth" name="truetitles[]" placeholder="Tempat" class="span4" />
                    <input type="text"  id="birth_date" name="truetitles[]" value="' . date('Y-m-d') . '" class="span4" />
                    ');
?>
<input type="hidden"  id="code" name="truetitles[]" value="<?=saveAutoCode();?>" class="span4" />
<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=GENDER;?></label>
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
<?= inputLovNew('tb_country_id', 'tb_country_name', '', 'Kewarganegaraan', 'country', 'true', $_GET['action'], 'false', '', ''); ?>
<?= inputGeneral('....', 'Pekerjaan', 'job', 'true', $_GET['action']); ?>
