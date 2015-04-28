
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

<?php if ($_GET['content'] == 'sentra') { ?>
    <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                <th style="width:5%;text-align:center;">
                    <!--<input type="checkbox" id="checkedAll" class="group-checkable" onchange="checkedAll('<?= $length_list; ?>');" />-->
                </th>
                <th style="width:5%;text-align:center;">No</th>
                <th style="width:20%;" class="hidden-phone">Name</th>
                <th style="width:20%;" class="hidden-phone">Sentra</th>
                <th style="width:20%;" class="hidden-phone">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;

            foreach ($list_query as $array_list_query) {
                ?>
            <tr class="odd gradeX" id="tr<?=$no;?>" onclick="checkedList('<?= $array_list_query['tb_sentra_id']; ?>','<?= $no; ?>');">
                    <td style="text-align:center;">
                        <input type="hidden" id="idItem<?= $no; ?>" value="<?=$array_list_query['tb_sentra_id'];?>"/><input type="checkbox" class="checkboxes" onchange="checkedList('<?= $array_list_query['tb_sentra_id']; ?>','<?= $no; ?>');" id="checkboxes<?= $no; ?>" value="0" />
                    <td style="text-align:center;"><?= $no; ?></td>
                    
                    <td>
                        <?= $array_list_query['tb_sentra_name']; ?>
                    </td> 
                    <td>
                        <?= idListViewManual('select tb_province_name from tb_province where tb_province_id='.$array_list_query['tb_sentra_province_id'],'tb_province_name'); ?>
                    </td> 
                    
        <?php include "../../function/actionlist.php"; ?>
                </tr>
                    <?php
                    $no++;
                }
                ?>	
        </tbody>
    </table>

<?php } ?>
<input type="hidden" id="checkDelete" value="0"/>
<input type="hidden" id="jumDel" value="0" />
<input type="hidden" id="firstRowField" value="0" />
<input type="hidden" id="jumlahlist" value="<?=count($list_query);?>" />