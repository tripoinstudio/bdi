<?= inputLovEdit('tb_personal_identity_id', 'tb_personal_identity_name', $query1['tb_family_relationship_personal_id'], 'Nama Keluarga', 'personal_identity', 'true', $_GET['action'], 'false', ''); ?>
<button type="button" onclick="addItemFR();" class="btn"><i class="icon-plus"></i> Add Item</button><br/>

<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th style="width:30%;text-align:center;vertical-align: middle;">Code</th>

            <th style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Nama</th>

        </tr>
    </thead>
    <tbody id="item">

        <?php
        $dbs = new Database();
        $dbs->connect();

        $groupa = $query1['tb_family_relationship_id'];
        $dbs->select('tb_relationship', '*', NULL, 'tb_family_relationship_id=' . $groupa);
        $list_users = $dbs->getResult();
        foreach ($list_users as $usera) {
            $noi += 1;
            ?>

            <tr>
                <th style="text-align:center;width:5%;vertical-align: middle;">
                    <?= $noi; ?>
                </th>
                <th class="hidden-phone" style="width:30%;" >
                    <input type="hidden" value="<?= $usera['tb_relationship_id']; ?>" id="idItem<?= $noi; ?>">
                    <input type="text" value="<?= $usera['tb_relationship_relation_code']; ?>" id="code<?= $noi; ?>">

                    <? //= $usera['tb_relationship_relation_code']; ?>
                </th>
                <th class="hidden-phone" style="width:30%;" >



                    <select id='lovNameTr<?= $noi; ?>' class='input-large m-wrap'> <option value='0'>Select ...</option>

                        <?php
                        $manual = "select * from tb_personal_identity order by tb_personal_identity_name";
                        $lovquery = mysql_query($manual);
                        while ($listlov = mysql_fetch_array($lovquery)) {
                            if ($listlov['tb_personal_identity_id'] == $usera['tb_relationship_relationship_id']) {
                                echo "<option value=" . $listlov['tb_personal_identity_id'] . " selected='selected'>" . $listlov['tb_personal_identity_name'] . "</option>";
                            } else {
                                echo "<option value=" . $listlov['tb_personal_identity_id'] . ">" . $listlov['tb_personal_identity_name'] . "</option>";
                            }
                        }
                        ?>
                    </select>

                </th>


            </tr>
            <?php
        }
        ?>

    </tbody>
</table>
<input type="hidden" id="counter" value="<?= count($list_users); ?>" />
<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-horizontal">
    <div class="span7 offset3">
        <button type="button" onclick="saveFamily('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
        <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
    </div>
</div>