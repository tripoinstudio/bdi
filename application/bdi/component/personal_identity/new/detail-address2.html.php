<?= inputGeneral('....', 'Jalan', 'jalan2', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'No', 'no2', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'Kelurahan', 'kelurahan2', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'Kecamatan', 'kecamatan2', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'Mobile Number', 'mobile2', 'false', $_GET['action']); ?>

<div class="form-row control-group row-fluid">
    <label class="control-label span3">Pilih Kabupaten</label>
    <div class="controls span9">

        <select id='lovscity2' class='input-large m-wrap'> <option value='0'>Select ...</option>

            <?php
            $manual = "select * from tb_city order by tb_city_name";
            $lovquery = mysql_query($manual);
            while ($listlov = mysql_fetch_array($lovquery)) {
             echo   "<option value=" . $listlov['tb_city_id'] . ">" . $listlov['tb_city_name'] . "</option>";
            }
            ?>
        </select>
        <span class="help-inline" name="namens[]" id="city2ns"></span>

    </div>
</div>

<div class="form-row control-group row-fluid">
    <label class="control-label span3">Pilih Province</label>
    <div class="controls span9">

        <select id='lovsprovince2' class='input-large m-wrap'> <option value='0'>Select ...</option>

            <?php
            $manuals = "select * from tb_province order by tb_province_name";
            $lovquerys = mysql_query($manuals);
            while ($listlov = mysql_fetch_array($lovquerys)) {
           echo     "<option value=" . $listlov['tb_province_id'] . ">" . $listlov['tb_province_name'] . "</option>";
            }
            ?>
        </select>
        <span class="help-inline" name="namens[]" id="province2ns"></span>

    </div>
</div>