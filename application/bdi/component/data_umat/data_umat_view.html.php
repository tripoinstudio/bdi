<div class="content">
    <ul class="nav nav-tabs" id="tabExample1">
        <li class="active"><a data-toggle="tab" href="#home1"><?=TAB1;?></a></li>
        <li><a data-toggle="tab" href="#alamat1"><?=TAB2;?></a></li>
        <li><a data-toggle="tab" href="#alamat2"><?=TAB3;?></a></li>
        <li><a data-toggle="tab" href="#nichiren"><?=TAB4;?></a></li>
        <li><a data-toggle="tab" href="#data-keluarga"><?=TAB5;?></a></li>
    </ul>
    <div class="tab-content">
        <div id="home1" class="tab-pane fade in active">
            <?php include 'view/detail1.html.php'; ?>
        </div>
        <div id="alamat1" class="tab-pane fade">
            <?php include 'view/detail-address1.html.php'; ?>

        </div>
        <div id="alamat2" class="tab-pane fade">
            <?php include 'view/detail-address2.html.php'; ?>

        </div>
        <div id="nichiren" class="tab-pane fade">
            <?php include 'view/nichiren.html.php'; ?>

        </div>
        <div id="data-keluarga" class="tab-pane fade">
            <?php include 'view/data-keluarga.html.php'; ?>

        </div>
        

    </div>
	<div>
	<?php
	
	if($query1['update_by'] == '' || $query1['update_by'] == ''){
		$creupd = $query1['created_by'];
		$creupddate = subMonth($query1['created_date']);
		$creupdhost = $query1['created_host'];
	} else {
		$creupd = $query1['update_by'];
		$creupddate = subMonth($query1['update_date']);
		$creupdhost = $query1['update_host'];
	
	}
	?>
	<table style="font-size:12px;">
	<tr>
	<td>UPDATE TERAKHIR</td>
	<td>:</td>
	<td ><?=$creupddate;?>|<?=$creupdhost;?>|<?=$creupd;?></td>
	</tr>
	</table>
	</div>    
        <a id="export-pdf" class="btn btn-info color_7" onclick="exportPdfUmat('pdf','pdf-detail-data-umat','&id=<?=$_GET['id']?>');" href="javascript:void(0)" data-original-title="" title=""><span class="icon-file"> EXPORT DETAIL UMAT PDF</span></a>
        <a id="export-excel" class="btn btn-info color_12" onclick="exportExcelUmat('excel','excel-detail-data-umat','&id=<?=$_GET['id']?>');" href="javascript:void(0)" data-original-title="" title=""><span class="icon-book"> Excel</span></a>
	</div>