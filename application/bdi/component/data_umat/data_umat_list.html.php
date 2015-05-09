
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

<?php if ($_GET['content'] == 'data_umat') { ?>
    <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                <th style="width:5%;text-align:center;">
                    <!--<input type="checkbox" id="checkedAll" class="group-checkable" onchange="checkedAll('<?= $length_list; ?>');" />-->
                </th>
                <th style="width:5%;text-align:center;">No</th>
                <th style="width:20%;" class="hidden-phone" >NIK Umat</th>
                <th style="width:20%;" class="hidden-phone">Nama Sesuai KTP</th>
                <th style="width:20%;" class="hidden-phone">Daerah</th>
                <th style="width:20%;" class="hidden-phone">Sentra</th>
                <th style="width:20%;" class="hidden-phone">Distrik</th>
                <th style="width:20%;" class="hidden-phone">Cetya</th>
                <th style="width:20%;" class="hidden-phone">Dharmasala</th>
                <th style="width:20%;" class="hidden-phone">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;

            foreach ($list_query as $array_list_query) {
                ?>

                <?php
                $dblist->select('tb_data_umat_pembagian', '*', NULL, 'tb_data_umat_id=' . $array_list_query['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
                $list_umatbg = $dblist->getResult();
                foreach ($list_umatbg as $array_list_umatbg) {
                    $daerahid = $array_list_umatbg['tb_province_id'];
                    $sentraid = $array_list_umatbg['tb_sentra_id'];
                    $distrikid = $array_list_umatbg['tb_distrik_id'];
                    $cetyaid = $array_list_umatbg['tb_cetya_id'];
                    $dharmasalaid = $array_list_umatbg['tb_dharmasala_id'];
                }
                $provinceid = idListViewTarget($daerahid, "province", "tb_province_code");
                $NIK = autoCodeUmat($provinceid, $array_list_query['tb_data_umat_nama_ktp'], $array_list_query['tb_data_umat_code']);
                $province = idListViewTarget($daerahid, "province", "tb_province_name");
                $sentra = idListViewTarget($sentraid, "sentra", "tb_sentra_name");
                $distrik = idListViewTarget($distrikid, "distrik", "tb_distrik_name");
                $cetya = idListViewTarget($cetyaid, "cetya", "tb_cetya_name");
                $dharmasala = idListViewTarget($dharmasalaid, "dharmasala", "tb_dharmasala_name");
                ?>
                <tr class="odd gradeX" id="tr<?= $no; ?>" onclick="checkedList('<?= $array_list_query['tb_data_umat_id']; ?>', '<?= $no; ?>');">
                    <td style="text-align:center;">
                        <input type="hidden" id="idItem<?= $no; ?>" value="<?= $array_list_query['tb_data_umat_id']; ?>"/><input type="checkbox" class="checkboxes" onchange="checkedList('<?= $array_list_query['tb_data_umat_id']; ?>', '<?= $no; ?>');" id="checkboxes<?= $no; ?>" value="0" />
                    <td style="text-align:center;"><?= $no; ?></td>
                    <td><?= $NIK; ?></td>
                    <td><?= $array_list_query['tb_data_umat_nama_ktp']; ?></td>
                    <td><?= $province; ?></td>
                    <td><?= $sentra; ?></td>
                    <td><?= $distrik; ?></td>
                    <td><?= $cetya; ?></td>
                    <td><?= $dharmasala; ?></td>
                    <td style="text-align:center;">
                        <div class="btn-group"> 
                            <?php if ($cekaction[0] == 2) { ?>
                                <a href="javascript:void(0);" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_data_umat_id']; ?>', 'view');" data-toggle="tooltip" data-original-title="View" data-placement="top" rel="tooltip" class="btn btn-small"><i class="gicon-eye-open"></i></a>
                            <?php } ?>
                            <?php if ($cekaction[2] == 2) { ?>
                                <a href="javascript:void(0);" onclick="viewEdit('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_data_umat_id']; ?>', 'view');" data-toggle="tooltip" data-original-title=" Edit" data-placement="left" rel="tooltip" class="btn btn-small"><i class="gicon-edit"></i></a> 

                            <?php } ?>
                            <?php if ($cekaction[3] == 2) { ?>
                                <a href="javascript:void(0)" onclick="deletes('<?= $cekMenu['menu_function_link']; ?>', '<?= $array_list_query['tb_data_umat_id']; ?>', 'deletemanual');" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> 

                            <?php } ?>
                        </div>

                    </td>
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
<input type="hidden" id="jumlahlist" value="<?= count($list_query); ?>" />