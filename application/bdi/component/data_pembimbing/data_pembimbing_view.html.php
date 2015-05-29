<?php 
$db = new Database();
    $db->connect();	
//	$db->select('tb_data_umat', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$db->sql("select u.tb_data_umat_id,tb_data_umat_code, tb_data_umat_nama_ktp, tb_province_code from tb_data_umat u INNER JOIN tb_data_umat_pembagian p ON u.tb_data_umat_id=p.tb_data_umat_id INNER JOIN tb_province pr ON p.tb_province_id=pr.tb_province_id where u.tb_data_umat_id=".$query1['tb_data_umat_id']);
	$listdataumat = $db->getResult();
	
foreach ($listdataumat as $arraylistdataumat) {
	$namaumat = $arraylistdataumat['tb_data_umat_nama_ktp'];
	$codeumat = $arraylistdataumat['tb_data_umat_code'];
	$codedaerah = $arraylistdataumat['tb_province_code'];
}
 ?>

<div class="form-row control-group row-fluid">
             <label class="control-label span3">NIK</label>
             <div class="controls span9">
			
			 <?=autoCodeUmat($codedaerah, $namaumat, $codeumat);?>
			  <a class="btn btn-small" rel="tooltip" data-placement="top" data-original-title="View" data-toggle="tooltip" onclick="viewListDataUmat('data_umat', '<?=$query1['tb_data_umat_id'];?>', 'view');" href="javascript:void(0);"><i class="gicon-eye-open"></i> Detail Umat</a>
			 <span id="ns" name="namens[]" class="help-inline">
                 
             
</span>
            
             </div>
             </div>

<?= inputGeneralView($namaumat, 'Nama', '', 'true', $_GET['action']); ?>

<?= inputGeneralViewLov($query1['tb_pembimbing_id'], 'Pembimbing', 'pembimbing', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_data_pembimbing_judul'], 'Judul', '', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_data_pembimbing_pertanyaan'], 'Pertanyaan', '', 'true', $_GET['action']); ?>
<?= inputGeneralView($query1['tb_data_pembimbing_jawaban'], 'Jawaban', 'true', $_GET['action']); ?>
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

<a id="export-pdf-detail" class="btn btn-info color_7" onclick="exportPdfDetailPembimbing('pdf','pdf-detail-data-bimbingan','&id=<?=$_GET['id']?>');" href="javascript:void(0)" data-original-title="" title=""><span class="icon-file">  EXPORT DETAIL DATA BIMBINGAN PDF</span></a>



<div id="myModals" class="modal fade bs-example-modal-lg" role="dialog" style="width:800px;">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">DATA UMAT</h4>
      </div>
      <div class="modal-body">
       <div id="isiBodyUmat">
	   </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>