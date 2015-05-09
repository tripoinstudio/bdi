<?php
session_start();
?>
<?php if ($_GET['action'] == 'update') { ?>
<div class="alert alert-success" id="successf">
    <button class="close" data-dismiss="alert">×</button>
    Data Has been update<strong> Successfully</strong> 
</div>
<?php } ?>

<?php if ($_GET['content'] == 'change-password') { ?>


    <?= inputPassword($code, 'Password Lama', 'password-lama', 'true', 'edit','disabled="disabled"'); ?>
    <?= inputPassword('', 'Password Baru', 'password-baru', 'true', 'edit'); ?>
    <?= inputPassword('', 'Re-Password Baru', 'repassword-baru', 'true', 'edit'); ?>

<input type="hidden" id="idUp" value="<?=$user_id;?>" />
    <div class="form-actions color_26">
        <button type="button" onclick="saveChangePass('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>

        <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
    </div>

<?php } ?>