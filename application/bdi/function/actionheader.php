<!--<form onsubmit="return showSearch('<?// $cekMenu['menu_function_link'];?>','searchs');" style="background-color: #eeeeee;" class="form-inline well color_26" action="javascript:void(0);" method="get">
    <table style="width: 100%;">
            <tr style="vertical-align: middle;">
                <td style="width: 120px;">
                    <select  name="searchfield" id="searchtype" class="form-control" style="width: 100px;" data-placeholder="Choose an option..">
                        <option value="code">code</option>
                        <option value="name">name</option>
                    </select>
                </td>
                <td>        
                    <input type="text" placeholder="All" class="span5" name="search" id="searchfield">
                    <button class="btn btn-primary" type="submit" >Search <i class="gicon-search icon-white"></i></button>

                </td>

            </tr>
        </table>


    </form>-->
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
    ?>
    <a href="javascript:void(0)" onclick="<?=$exportpdf;?>" class="btn btn-info color_7" id="export-pdf"><span class="icon-file"> PDF</span></a>
    <a href="javascript:void(0)" onclick="<?=$exportexcel;?>" class="btn btn-info color_12" id="export-excel"><span class="icon-book"> Excel</span></a>
    
    <?php
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
<button id="back" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-danger"><i class="icon-remove icon-white"></i> Back</button>
<br/>
<br/>