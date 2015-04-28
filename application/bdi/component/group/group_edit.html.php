<?= inputGeneral($query1['tb_group_code'], 'Kode Group', 'code', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_group_name'], 'Nama Group', 'name', 'true', $_GET['action']); ?>

<button type="button" onclick="addItem();" class="btn"><i class="icon-plus"></i> Add Item</button><br/>
<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th rowspan="2"style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th rowspan="2" style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Name</th>
            <th rowspan="2" style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Status</th>
            <!--<th  colspan="4"  style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Action</th>-->
        </tr>
        <tr>
            <th style="width:5%;text-align:center;vertical-align: middle;" class="hidden-phone">View</th>
            <th style="width:5%;text-align:center;vertical-align: middle;" class="hidden-phone">Create</th>
            <th style="width:5%;text-align:center;vertical-align: middle;" class="hidden-phone">Edit</th>
            <th style="width:5%;text-align:center;vertical-align: middle;" class="hidden-phone">Delete</th>
        </tr>
    </thead>
</table>
<div class="table" style="height:300px;border-top:none; overflow:scroll">
    <table class="table table-striped table-bordered" id="sample_1">
        <tbody id="item">

            <?php
            $dbs = new Database();
            $dbs->connect();

            $groupa = $query1['tb_group_id'];
            $dbs->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupa);
            $list_users = $dbs->getResult();
            foreach ($list_users as $usera) {
                $noi += 1;
                $menuid = $usera['menu_function_id'];
//echo count($usera);
                $dbs->select('menu_function', '*', NULL, 'menu_function_id=' . $menuid);
                $list_menu = $dbs->getResult();
                foreach ($list_menu as $menua) {

                    //    $no = 1;
                    ?>
                    <tr>
                        <th style="text-align:center;width:5%;vertical-align: middle;"><input type="hidden" id="idItem<?= $noi; ?>" value="<?= $usera['structure_menu_id']; ?>"/><?= $noi; ?></th>
                        <th class="hidden-phone" style="width:30%;"><input type="hidden" id="lovNameTr<?= $noi; ?>" value="<?= $menua['menu_function_id']; ?>"/>

                            <?php
                            echo '<span style="font-size:14px;">' . $menua['menu_function_name'] . '</span>';
                            /*    if ($menua['menu_function_level'] == 1) {
                              echo '<span style="font-size:14px;">' . $menua['menu_function_name'] . '</span>';
                              } else {
                              echo '<span style="font-size:10px;font-weight:bold;"> - ' . $menua['menu_function_name'] . '</span>';
                              } */
                            ?>

                        </th>

                        <th style="text-align:center;width:30%;vertical-align: middle;" class="hidden-phone">
                            <?php
                            if ($usera['status'] == 1) {
                                echo '<span id="spanstatus' . $noi . '"><a href="javascript:void(0)" onclick="setStatus(' . $noi . ',' . $usera['status'] . ');"><input type="hidden" id="setstatus' . $noi . '" value="' . $usera['status'] . '" /><span class="label label-success">Active</span></a></span>';
                            } else {
                                echo '<span id="spanstatus' . $noi . '"><a href="javascript:void(0)" onclick="setStatus(' . $noi . ',' . $usera['status'] . ');"><input type="hidden" id="setstatus' . $noi . '" value="' . $usera['status'] . '" /><span class="label label-inverse">Non Active</span></a></span>';
                            }
                            $minsa = explode(',', $usera['structure_menu_action']);
                            //  $minsa = array($usera['structure_menu_action']);
                            // echo $minsa[3];
                            //  echo count($minsa);
                            // $checked = "";
                            if ($minsa[0] == '2') {
                                $checked1 = "checked";
                            } else {
                                $checked1 = "";
                            }

                            if ($minsa[1] == 2) {
                                $checked2 = "checked";
                            } else {
                                $checked2 = "";
                            }

                            if ($minsa[2] == 2) {
                                $checked3 = "checked";
                            } else {
                                $checked3 = "";
                            }

                            if ($minsa[3] == 2) {
                                $checked4 = "checked";
                            } else {
                                $checked4 = "";
                            }
                            ?></th>
                        <th style="width:5%;text-align:center;vertical-align: middle;" class="hidden-phone"><input type="checkbox" id="viewc<?= $noi; ?>" value="<?= $minsa[0]; ?>" <?=$checked1;?>/></th>
                        <th style="width:5.5%;text-align:center;vertical-align: middle;" class="hidden-phone"><input type="checkbox" id="createc<?= $noi; ?>" value="<?= $minsa[1]; ?>" <?=$checked2;?>/></th>
                        <th style="width:5%;text-align:center;vertical-align: middle;" class="hidden-phone"><input type="checkbox" id="editc<?= $noi; ?>" value="<?= $minsa[2]; ?>" <?=$checked3;?>/></th>
                        <th style="width:4.3%;text-align:center;vertical-align: middle;" class="hidden-phone"><input type="checkbox" id="deletec<?= $noi; ?>" value="<?= $minsa[3]; ?>" <?=$checked4;?>/></th>

                    </tr>
        <?php
    }
    //  $noi++;
}
?>
        </tbody>
    </table>
</div>
<input type="hidden" id="counter" value="<?= $noi; ?>" />
<input type="hidden" id="idGroupNow" value="<?= $groupa; ?>" />
<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-actions">
    <button type="button" onclick="saveGroup('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>