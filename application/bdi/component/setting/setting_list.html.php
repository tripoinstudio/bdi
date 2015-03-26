<?php
session_start();
?>

<div class="alert alert-success" id="successf">
    <button class="close" data-dismiss="alert">×</button>
    Data Has been added<strong> Successfully</strong> 
</div>

<?php if ($_GET['content'] == 'setting') { ?>
    <?php
//echo 'tesid'.$_SESSION['user_id'];
//echo 'tesid='.$_SESSION['username'];
    ?>

    <?= inputGeneral($code, 'Kode Perusahaan', 'code', 'Some hint here', 'edit'); ?>
    <?= inputGeneral($name, 'Name Perusahaan', 'name', 'Some hint here', 'edit'); ?>

    <table class="table table-striped table-bordered" id="sample_1">
        <thead>
            <tr>
                <th style="width:5%;text-align:center;">No</th>
                <th style="width:30%;" class="hidden-phone" >Username</th>
                <th style="width:30%;" class="hidden-phone">Full Name</th>
                <th style="width:30%;" class="hidden-phone">Status</th>
            </tr>
        </thead>
        <tbody>

            <?php
            foreach ($list_users as $usera) {
                //  $code = $array_list_product['tb_settings_code'];
//    $name = $array_list_product['tb_settings_name'];
                $no = 1;
                ?>
                <tr>
                    <th style="width:5%;text-align:center;"><?= $no; ?></th>
                    <th style="width:30%;" class="hidden-phone" ><a href="#" id="username" id="username"><?= $usera['user_username']; ?></a></th>
                    <th style="width:30%;" class="hidden-phone"><?= $usera['user_fullname']; ?></th>
                    <th style="width:30%;" class="hidden-phone">
                        <?php
                        if ($usera['user_status'] == 1) {
                            echo '<span class="label label-success">Active</span>';
                        } else {
                            echo '<span class="label label-warning">Non Active</span>';
                        }
                    
                    ?></th>
            </tr>
            <?php
            $no++;
        }
        ?>
    </tbody>
</table>
<div class="form-actions">
    <button type="button" onclick="save<?= $cekMenu['menu_function_link']; ?>('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>

    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>

<?php } ?>