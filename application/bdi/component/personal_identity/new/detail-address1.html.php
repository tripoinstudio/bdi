
<?= inputGeneral('....', 'Jalan', 'jalan1', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'No', 'no1', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'Kelurahan', 'kelurahan1', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'Kecamatan', 'kecamatan1', 'false', $_GET['action']); ?>

<?= inputGeneral('....', 'Mobile Number', 'mobile1', 'false', $_GET['action']); ?>

<div class="form-row control-group row-fluid">
    <label class="control-label span3">Pilih Kabupaten</label>
    <div class="controls span9">

        <select id='lovscity1' class='input-large m-wrap'> <option value='0'>Select ...</option>

            <?php
            $manual = "select * from tb_city order by tb_city_name";
            $lovquery = mysql_query($manual);
            while ($listlov = mysql_fetch_array($lovquery)) {
                echo "<option value=" . $listlov['tb_city_id'] . ">" . $listlov['tb_city_name'] . "</option>";
            }
            ?>
        </select>
        <span class="help-inline" name="namens[]" id="city1ns"></span>

    </div>
</div>

<div class="form-row control-group row-fluid">
    <label class="control-label span3">Pilih Province</label>
    <div class="controls span9">

        <select id='lovsprovince1' class='input-large m-wrap' onchange="setCodeUmat();"> <option value='0'>Select ...</option>

            <?php
            $manuals = "select * from tb_province order by tb_province_name";
            $lovquerys = mysql_query($manuals);
            while ($listlov = mysql_fetch_array($lovquerys)) {
                echo "<option value=" . $listlov['tb_province_id'] . ">" . $listlov['tb_province_name'] . "</option>";
            }
            ?>
        </select>
        <span class="help-inline" name="namens[]" id="province1ns"></span>

    </div>
</div>