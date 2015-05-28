<?php if ($_GET['action'] == 'save') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been added<strong> Successfully</strong> 
    </div>
<?php } ?>

<?php if ($_GET['content'] == 'pembimbing') { ?>
    <div class="inline"><button onclick="return addPembimbing(0,2);" id="createitem" class="btn btn-primary" data-original-title="" title=""><i class="gicon-plus"></i> Tambah Data Pembimbing</button>
</div><div class="inline" id="proses_loading_item"></div>

<br/>
<br/>
    <table id="table-item" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                
                <th style="width:10%;text-align:center;">#</th>
                <th style="width:90%;" class="hidden-phone">Name</th>
            </tr>
        </thead>
        <tbody id="frmItem">
		 <?php
            $no = 0;

            foreach ($list_query as $array_list_query) {
				$no++
            ?>
			<tr id="tritem<?=$no;?>"><td style="text-align:center;">
				<a href="javascript:void(0)" onclick="return delitempem(<?=$no;?>,<?=$array_list_query['tb_pembimbing_id'];?>)" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> 
				</td>
				<td><input type="hidden"  id="idItem<?=$no;?>"  value="<?=$array_list_query['tb_pembimbing_id'];?>" name="name" placeholder="" class="span3" />
				<input type="text"  id="name<?=$no;?>" value="<?=$array_list_query['tb_pembimbing_name'];?>" name="name" placeholder="" class="span6" /></td>
				</tr>
			
			<?php
			
			}
			?>
            
        </tbody>
    </table>


<?php } ?>
<br/>
<br/>
<div class="span7">
    <button id="buttonsaveitem" type="button" onclick="savePembimbing2('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
</div>

<br/>
<br/>
<br/>
<br/>
<input type="hidden" id="countername" value="<?=count($list_query);?>" />