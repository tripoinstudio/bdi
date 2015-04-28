<!--     -->


<td style="text-align:center;">
<div class="btn-group"> 

    <?php
    if ($_SESSION['backend'] == 1) {
        if (($_GET['content'] == 'user')) {
            ?>
    <?php if ($cekaction[0] == 2) { ?>
                 <a href="javascript:void(0);" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'view');" data-toggle="tooltip" data-original-title="View" data-placement="top" rel="tooltip" class="btn btn-small"><i class="gicon-eye-open"></i></a>
                 <?php } ?>
            <?php if ($cekaction[2] == 2) { ?>
                     <a href="javascript:void(0);" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['' . $cekMenu['menu_function_link'] . '_id']; ?>', 'view');" data-toggle="tooltip" data-original-title=" Edit" data-placement="left" rel="tooltip" class="btn btn-small"><i class="gicon-edit"></i></a> 
         
            <?php } ?>
            <?php if ($cekaction[3] == 2) { ?>
                <a href="javascript:void(0)" onclick="deletes('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['' . $cekMenu['menu_function_link'] . '_id']; ?>', 'delete');" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> 
  <?php } ?>
        <?php } else { ?>
                 <?php if ($cekaction[0] == 2) { ?>
                 <a href="javascript:void(0);" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'view');" data-toggle="tooltip" data-original-title="View" data-placement="top" rel="tooltip" class="btn btn-small"><i class="gicon-eye-open"></i></a>
                 <?php } ?>
            <?php if ($cekaction[2] == 2) { ?>
                <a href="javascript:void(0);" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'view');" data-toggle="tooltip" data-original-title=" Edit" data-placement="left" rel="tooltip" class="btn btn-small"><i class="gicon-edit"></i></a> 
               
            <?php } ?>
            <?php if ($cekaction[3] == 2) { ?>
                    <a href="javascript:void(0)" onclick="deletes('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'delete');" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> 

            <?php } ?>
        <?php } ?>

    <?php } else if ($_SESSION['backend'] == 2) {
        if (($_GET['content'] == 'user')) {
            ?>
            <?php if ($cekaction[2] == 2) { ?>
                <button class="btn btn-primary" onclick="viewEditService('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query[$cekMenu['menu_function_link'] . '_id']; ?>', 'view');"><i class="icon-pencil icon-white"></i> Edit</button>
            <?php } ?>
            <?php if ($cekaction[3] == 2) { ?>
                <button onclick="deletes('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query[$cekMenu['menu_function_link'] . '_id']; ?>', 'delete');"  class="btn btn-danger"><i class="icon-remove icon-white"></i> Delete</button>
            <?php } ?>
        <?php } else { ?>
            <?php if ($cekaction[2] == 2) { ?>
                <button class="btn btn-primary" onclick="beforeViewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $jsonId; ?>', 'view',<?=$i;?>);"><i class="icon-pencil icon-white"></i> Edit</button>
            <?php } ?>
            <?php if ($cekaction[3] == 2) { ?>
                <button onclick="deletes('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_' . $cekMenu['menu_function_link'] . '_id']; ?>', 'delete');"  class="btn btn-danger"><i class="icon-remove icon-white"></i> Delete</button>
            <?php } ?>
    <?php }
}
?>
</div>

</td>