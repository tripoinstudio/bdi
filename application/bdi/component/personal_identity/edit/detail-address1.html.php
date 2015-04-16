<?php
$dblist = new Database();
$dblist->connect();
$dblist->select('tb_address', '*', NULL, 'tb_address_id=' . $query1['tb_personal_identity_ktp_address']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $dblist->getResult();
?>
<input type="hidden" id="adresseditid1" value="<?= $query1['tb_personal_identity_ktp_address']; ?>"/>

<?php
$no = 1;

foreach ($list_query as $array_address) {
    ?>

    <?= inputGeneral($array_address['tb_address_street'], 'Jalan', 'jalan1', 'false', $_GET['action']); ?>
    <?= inputGeneral($array_address['tb_address_ktp'], 'No', 'no1', 'false', $_GET['action']); ?>
    <?= inputGeneral($array_address['tb_address_district'], 'Kelurahan', 'kelurahan1', 'false', $_GET['action']); ?>
    <?= inputGeneral($array_address['tb_address_sub_district'], 'Kecamatan', 'kecamatan1', 'false', $_GET['action']); ?>
    <?= inputGeneral($array_address['tb_address_mobile_number'], 'Mobile Number', 'mobile1', 'false', $_GET['action']); ?>

    <div class="form-row control-group row-fluid">
        <label class="control-label span3">Pilih Kabupaten</label>
        <div class="controls span9">

            <select id='lovscity1' class='input-large m-wrap'> <option value='0'>Select ...</option>

                <?php
                $manual = "select * from tb_city order by tb_city_name";
                $lovquery = mysql_query($manual);
                while ($listlov = mysql_fetch_array($lovquery)) {
                    if ($listlov['tb_city_id'] == $array_address['tb_city_id']) {
                        echo "<option value=" . $listlov['tb_city_id'] . " selected='selected'>" . $listlov['tb_city_name'] . "</option>";
                    } else {
                        echo "<option value=" . $listlov['tb_city_id'] . ">" . $listlov['tb_city_name'] . "</option>";
                    }
                }
                ?>
            </select>
            <span class="help-inline" name="namens[]" id="city1ns"></span>

        </div>
    </div>

    <div class="form-row control-group row-fluid">
        <label class="control-label span3">Pilih Province</label>
        <div class="controls span9">

            <select id='lovsprovince1' class='input-large m-wrap'> <option value='0'>Select ...</option>

                <?php
                $manuals = "select * from tb_province order by tb_province_name";
                $lovquerys = mysql_query($manuals);
                while ($listlov = mysql_fetch_array($lovquerys)) {
                    if ($listlov['tb_province_id'] == $array_address['tb_province_id']) {
                        echo "<option value=" . $listlov['tb_province_id'] . " selected='selected'>" . $listlov['tb_province_name'] . "</option>";
                    } else {
                        echo "<option value=" . $listlov['tb_province_id'] . ">" . $listlov['tb_province_name'] . "</option>";
                    }
                }
                ?>
            </select>
            <span class="help-inline" name="namens[]" id="province1ns"></span>

        </div>
    </div>

<?php } ?>