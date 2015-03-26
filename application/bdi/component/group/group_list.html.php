
<?php if ($_GET['action'] == 'save') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been added<strong> Successfully</strong> 
    </div>
<?php } else if ($_GET['action'] == 'update') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been Update<strong> Successfully</strong> 
    </div>
<?php } else if ($_GET['action'] == 'delete') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been Delete<strong> Successfully</strong> 
    </div>
<?php } ?>								
<br />

<?php if ($_GET['content'] == 'group') { ?>
                <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">

        <thead>
            <tr>
                <th style="width:5%;text-align:center;"><input type="checkbox" id="checkedAll" class="group-checkable" onchange="checkedAll('<?= $length_list; ?>');" /></th>
                <th style="width:5%;text-align:center;">No</th>
                <th style="width:30%;" class="hidden-phone" >Code</th>
                <th style="width:30%;" class="hidden-phone">Name</th>
                <th style="width:30%;" class="hidden-phone">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;

            foreach ($list_query as $array_list_query) {
                //	$array_num_query=mysql_num_rows($list_query);
                ?>
                <tr class="odd gradeX">
                    <td style="text-align:center;"><input type="checkbox" class="checkboxes" id="checkboxes<?= $no; ?>" value="<?= $no; ?>" /></td>
                    <td style="text-align:center;"><?= $no; ?></td>
                    <td><?= $array_list_query['tb_group_code']; ?></td>
                    <td><?= $array_list_query['tb_group_name']; ?></td>
                    <?php include "../../function/actionlist.php"; ?>
                </tr>
                <?php
                $no++;
                //	$array_list_query++;
            }
            //	mysql_close($query);							
            ?>	
        </tbody>
    </table>

<?php } ?>