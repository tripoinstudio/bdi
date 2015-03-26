<?php
if ($cekaction[0] == '2') {
    // $checked1 = "checked";
    ?>

    <?php
} else {
    
}

if ($cekaction[1] == 2) {
    ?>
    <button class="btn btn-warning" id="create" onclick="showCreate('<?= $cekMenu['menu_function_link']; ?>', 'new');"><i class="icon-plus icon-white"></i> Create</button>
    <?php
} else {
    
}

if ($cekaction[2] == 2) {
    if ($_SESSION['backend'] == 1) {
        ?> 
        <?php if (($_GET['content'] == 'user')) { ?>
            <button id="edit" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $query1[$cekMenu['menu_function_link'] . '_id']; ?>', 'edit');" class="btn btn-primary"><i class="icon-pencil icon-white"></i> Edit</button>
        <?php } else { ?>
            <button id="edit" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $query1['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'edit');" class="btn btn-primary"><i class="icon-pencil icon-white"></i> Edit</button>
        <?php }
    } else {
        ?>
        <?php if (($_GET['content'] == 'user')) { ?>
            <button id="edit" onclick="beforeViewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $query1[$cekMenu['menu_function_link'] . '_id']; ?>', 'edit');" class="btn btn-primary"><i class="icon-pencil icon-white"></i> Edit</button>
        <?php } else { ?>
            <button id="edit" onclick="beforeViewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $query1['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'edit');" class="btn btn-primary"><i class="icon-pencil icon-white"></i> Edit</button>

            <?php
        }
    }
} else {
    
}

if ($cekaction[3] == 2) {
    ?>
    <button id="deleteAll" class="btn btn-danger" onclick="deleteAllfun('<?= $cekMenu['menu_function_link']; ?>', 'deleteAll');"><i class="icon-remove icon-white"></i> Delete</button>
    <?php
} else {
    
}
?>




<button id="cancel" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-danger"><i class="icon-remove icon-white"></i> Cancel</button>