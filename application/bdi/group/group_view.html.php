<div class="control-group">
    <label class="control-label">Kode Group</label>
    <div class="controls">
        <input type="text" id="code" value="<?= $query1['tb_group_code']; ?>" class="input-small" disabled />

    </div>
</div>
<div class="control-group">
    <label class="control-label"> Nama Group</label>
    <div class="controls">
        <input type="text" id="name" value="<?= $query1['tb_group_name']; ?>" class="input-medium" disabled />

    </div>
</div>

<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th rowspan="2"style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th rowspan="2" style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Name</th>
            <th rowspan="2" style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Status</th>
            <th  colspan="4"  style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Action</th>
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
        //    $dbs->sql("SELECT * FROM `structure_menu` s INNER JOIN `menu_function` m ON s.`menu_function_id`=m.`menu_function_id`  WHERE s.`tb_group_id`=" . $groupa . " and s.`status` =1 order by s.`structure_menu_id` asc ");
            $list_users = $dbs->getResult();
            foreach ($list_users as $usera) {
                $noi += 1;
                $menuid = $usera['menu_function_id'];
//echo count($usera);
                $dbs->select('menu_function', '*', NULL, 'menu_function_id=' . $menuid);
                $list_menu = $dbs->getResult();
                foreach ($list_menu as $menua) {

                    //    $no = 1;
            /*        if ($menua['menu_function_level'] == 1) {
                        $idatas = $menua['menu_function_id'];
                    }
                    if ($menua['menu_function_level'] == 2) {
                        $idbawah = $menua['menu_function_parent'];
                    }
                    if ($menua['menu_function_level'] == 1) {*/
                        ?>

                        <tr>
                            <th style="text-align:center;width:5%;vertical-align: middle;"><input type="hidden" id="idItem<?= $noi; ?>" value="<?= $usera['structure_menu_id']; ?>"/><?= $noi; ?></th>
                            <th class="hidden-phone" style="width:30%;" ><input type="hidden" id="lovNameTr<?= $noi; ?>" value="<?= $menua['menu_function_id']; ?>"/>
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
                                    echo '<span class="label label-success">Active</span>';
                                } else {
                                    echo '<span class="label label-inverse">Non Active</span>';
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
                            <th style="text-align:center;width:5%;vertical-align: middle;" class="hidden-phone"><input type="checkbox" disabled id="viewc<?= $noi; ?>" value="<?= $minsa[0]; ?>" /></th>
                            <th style="text-align:center;width:5.5%;vertical-align: middle;" class="hidden-phone"><input type="checkbox" disabled id="createc<?= $noi; ?>" value="<?= $minsa[1]; ?>"/></th>
                            <th style="text-align:center;width:5%;vertical-align: middle;" class="hidden-phone"><input type="checkbox" disabled id="editc<?= $noi; ?>" value="<?= $minsa[2]; ?>"/></th>
                            <th style="text-align:center;width:4.3%;vertical-align: middle;" class="hidden-phone"><input type="checkbox" disabled id="deletec<?= $noi; ?>" value="<?= $minsa[3]; ?>"/></th>

                            </th>
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