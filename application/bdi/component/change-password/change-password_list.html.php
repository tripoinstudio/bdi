<?php
session_start();
?>

<div class="alert alert-success" id="successf">
    <button class="close" data-dismiss="alert">×</button>
    Data Has been added<strong> Successfully</strong> 
</div>

<?php if ($_GET['content'] == 'change-password') { ?>
    <?php
//echo 'tesid'.$_SESSION['user_id'];
//echo 'tesid='.$_SESSION['username'];
    ?>

    <?= inputPassword($code, 'Password Lama', 'password-lama', 'true', 'edit'); ?>
    <?= inputPassword('', 'Password Baru', 'password-baru', 'true', 'edit'); ?>
    <?= inputPassword('', 'Re-Password Baru', 'repassword-baru', 'true', 'edit'); ?>


    <div class="form-actions color_26">
        <button type="button" onclick="save<?= $cekMenu['menu_function_link']; ?>('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>

        <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
    </div>

<?php } ?>