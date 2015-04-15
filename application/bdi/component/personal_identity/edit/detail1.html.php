<?= inputGeneral($query1['tb_personal_identity_name'], 'Nama Sekarang', 'name', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Jenis Kelamin</label>
    <div class="controls span9">
        <?php
        if ($query1['tb_personal_identity_gender'] == 1) {
            ?>
            <label class="radio ">
                <input type="radio" id="gender"  value="1" name="radio1"  checked="CHECKED" />
                <span style="padding-left: 10px;">Laki-laki </span>
            </label>
            <label class="radio ">
                <input type="radio" id="gender" value="2" name="radio1"/>
                <span style="padding-left: 10px;">Perempuan </span>
            </label>
            <?php
        } else {
            ?>
            <label class="radio ">
                <input type="radio" id="gender"  value="1" name="radio1" />
                <span style="padding-left: 10px;">Laki-laki </span>
            </label>
            <label class="radio ">
                <input type="radio" id="gender" value="2" name="radio1"   checked="CHECKED"/>
                <span style="padding-left: 10px;">Perempuan </span>
            </label>
            <?php
        }
        ?>

        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>
<?= inputGeneralTemplate('Tempat/Tanggal Lahir', '
                    <input type="text"  id="place_of_birth" name="truetitles[]" placeholder="Tempat" value="' . $query1['tb_personal_identity_place_of_birth'] . '" class="span4" />
                    <input type="text"  id="birth_date" name="truetitles[]" value="' . $query1['tb_personal_identity_birth_date'] . '" class="span4" />
                    ');
?>
<?= inputGeneral($query1['tb_personal_identity_job'], 'Pekerjaan', 'job', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Status Perkawinan</label>
    <div class="controls span9">

        <select id='lovsstatus'  class='input-large m-wrap'>
            <?php
            $ms;
            if ($query1['tb_personal_identity_marital_status'] == 1) {
                ?>
                <option value="1" selected="selected">Kawin</option>
                <option value="2">Belum Kawin</option>
                <?php
            } else {
                ?>   
                <option value="1">Kawin</option>
                <option value="2" selected="selected">Belum Kawin</option>
                <?php
                $ms = 'Belum Menikah';
            }
            ?>

        </select>
        <span class="help-inline" name="namens[]" id="statusns"></span>
    </div>
</div>
<?= inputLovNew('tb_country_id', 'tb_country_name', '', 'Kewarganegaraan', 'country', 'true', $_GET['action'], 'false', '', ''); ?>


<?= inputGeneral($query1['tb_personal_identity_gojukai_date'], 'Tgl Gozukai', 'gojukai_date', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_personal_identity_gohozon_accept_date'], 'Tgl Terima Gohonzon', 'gohozon_accept_date', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_personal_identity_okataki_gohozon'], 'Otakagi Gohonzon', 'okataki_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_personal_identity_omamori_gohozon'], 'Omamari Gohonzon', 'omamori_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_personal_identity_tokubetsu_gohozon'], 'Tokubetsu Gohonzon', 'tokubetsu_gohozon', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_personal_identity_kankai_date'], 'Tgl Kankai', 'kankai_date', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Upacara Nichiren Shosu</label>
    <div class="controls span9">
        <?php
        $ms;
        if ($query1['tb_personal_identity_is_nichiren_shosu'] == 1) {
            ?>
            <label class="radio ">
                <input type="radio" id="upacarashosu" value="1" name="radio2" checked="CHECKED">
                <span style="padding-left: 10px;">Ya </span>

            </label>
            <label class="radio ">
                <input type="radio" id="upacarashosu"  value="2" name="radio2">
                <span style="padding-left: 10px;">Tidak </span>

            </label>
            <?php
        } else {
            ?>   
            <label class="radio ">
                <input type="radio" id="upacarashosu" value="1" name="radio2" >
                <span style="padding-left: 10px;">Ya </span>

            </label>
            <label class="radio ">
                <input type="radio" id="upacarashosu"  value="2" name="radio2" checked="CHECKED">
                <span style="padding-left: 10px;">Tidak </span>

            </label>
            <?php
            $ms = 'Belum Menikah';
        }
        ?>

        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>