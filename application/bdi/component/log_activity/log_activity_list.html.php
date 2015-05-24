
<?php if ($_GET['action'] == 'save') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been added<strong> Successfully</strong> 
    </div>
<?php } else if ($_GET['action'] == 'delete') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been Delete<strong> Successfully</strong> 
    </div>
<?php } ?>								
<br />

<?php if ($_GET['content'] == 'log_activity') { ?>


    <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                <th style="width:5%;text-align:center;"><input type="checkbox" id="checkedAll" class="group-checkable" onchange="checkedAll('<?= $length_list; ?>');" /></th>
                <th style="width:5%;text-align:center;">No</th>
                <th style="width:20%;" class="hidden-phone">Description</th>
                <th style="width:20%;" class="hidden-phone" >Created By</th>
                                <th style="width:20%;" class="hidden-phone" >Created IP</th>
                <th style="width:20%;" class="hidden-phone" >Created Date</th>

            </tr>
        </thead>
        <tbody>
            <?php
            $no = 0;

            foreach ($list_query as $array_list_query) {
            //	$array_num_query=mysql_num_rows($list_query);
			$no++;
                ?>
                <tr class="odd gradeX"  id="tr<?=$no;?>" onclick="checkedList('<?= $array_list_query['tb_log_activity_id']; ?>','<?= $no; ?>');">
                    <td style="text-align:center;">
                        <input type="hidden" id="idItem<?= $no; ?>" value="<?=$array_list_query['tb_log_activity_id'];?>"/><input type="checkbox" class="checkboxes" onchange="checkedList('<?= $array_list_query['tb_log_activity_id']; ?>','<?= $no; ?>');"  id="checkboxes<?= $no; ?>" value="0" />
                    <td style="text-align:center;"><?= $no; ?></td>
                    <td><?= $array_list_query['tb_log_activity_description']; ?></td>
                    <td><?= $array_list_query['tb_log_activity_created_by']; ?></td>
                    <td><?= $array_list_query['tb_log_activity_created_ip']; ?></td>
                    <td><?= $array_list_query['tb_log_activity_created_date']; ?></td>
                </tr>
                    <?php
                    
                    //	$array_list_query++;
                }
                //	mysql_close($query);							
                ?>	
        </tbody>
    </table>
<!--<a class="btn btn-info color_7" onclick="nextLimit('log_activity','list','2');" href="javascript:void(0)" data-original-title="" title="">Next Limit</a>-->
<?php } ?>
<input type="hidden" id="checklimit" value="0"/>
<input type="hidden" id="checkDelete" value="0"/>
<input type="hidden" id="jumDel" value="0" />
<input type="hidden" id="firstRowField" value="0" />
<input type="hidden" id="jumlahlist" value="<?=count($list_query);?>" />