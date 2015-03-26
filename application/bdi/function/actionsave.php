<div class="span12">
<div class="form-actions">
<?php if($_GET['action'] == 'new'){?>
	<button type="button" onclick="save<?=$cekMenu['menu_function_link'];?>('<?=$cekMenu['menu_function_link'];?>','save');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <?php }else{?>
    <button type="button" onclick="save<?=$cekMenu['menu_function_link'];?>('<?=$cekMenu['menu_function_link'];?>','update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <?php } ?>
    <button type="button" onclick="showMenu('<?=$cekMenu['menu_function_link'];?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
 </div>
    </div>
<div class="space15"></div>