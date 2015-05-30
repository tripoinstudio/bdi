<?php 
$db = new Database();
    $db->connect();	
//	$db->select('tb_data_umat', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$db->sql("select u.tb_data_umat_id,tb_data_umat_code, tb_data_umat_nama_ktp, tb_province_code from tb_data_umat u INNER JOIN tb_data_umat_pembagian p ON u.tb_data_umat_id=p.tb_data_umat_id INNER JOIN tb_province pr ON p.tb_province_id=pr.tb_province_id where u.tb_data_umat_id=".$query1['tb_data_umat_id']);
	$listdataumat = $db->getResult();
	
foreach ($listdataumat as $arraylistdataumat) {
	$namaumat = $arraylistdataumat['tb_data_umat_nama_ktp'];
	$codeumat = $arraylistdataumat['tb_data_umat_code'];
	$idumat = $arraylistdataumat['tb_data_umat_id'];
	$codedaerah = $arraylistdataumat['tb_province_code'];
}
$NIK = autoCodeUmat($codedaerah, $namaumat, $codeumat);
 ?>
<?php /*= inputGeneralTemplate('Nik Umat / Nama', '
					<input type="text"  id="code_daerah" name="falsetitles[]" placeholder="..." class="span1"/>.<input type="text"  id="code_name" name="falsetitles[]" placeholder="..." class="span1"/>.<input type="text"  id="code_nik" name="falsetitles[]" placeholder="..." class="span1"/> / 
                    <input type="text"  id="name" name="falsetitles[]" placeholder="..." class="span4" /> 
                    
					<button type="button" class="btn btn-info btn-lg" style="margin-bottom: 10px;height:32px;" data-toggle="modal" onclick="findumatPop();">Search</button>
					<button type="button" class="btn btn-info btn-lg" style="margin-bottom: 10px;height:32px;" data-toggle="modal" onclick="resetClear();">Batal</button>
                    <br>
					<span id="itemUmatName">'.$NIK.' / '.$namaumat.'</span>
					<input type="hidden"  id="itemUmatId" value="'.$idumat.'" class="span4" /> 
					
					'); */
?>

<?= inputGeneralTemplate('Nik Umat / Nama', '
					
					<span id="itemUmatName">'.$NIK.' / '.$namaumat.'</span>
					<input type="hidden"  id="itemUmatId" value="'.$idumat.'" class="span4" /> 
					
					');
?>

<?=inputLovEdit('tb_pembimbing_id', 'tb_pembimbing_name', $query1['tb_pembimbing_id'], 'Pembimbing', 'pembimbing', 'false', $_GET['action'], 'false', '', '','');?>

<? // inputLov('Pilih Negara', 'lovcountry', 'lovcountrys','country', $_GET['action'], '', ''); ?>
<?php //= inputLovNew('tb_country_id', 'tb_country_name','', 'Pilih Negara','country','true', $_GET['action'], 'false', '',''); ?>
<?= inputGeneral(date("d-m-Y", strtotime($query1['tb_data_pembimbing_tanggal'])) , 'Tanggal', 'tanggal', 'false', $_GET['action']); ?>
<?= inputGeneral($query1['tb_data_pembimbing_judul'], 'Judul Bimbingan', 'judul', 'false', $_GET['action']); ?>
<?= inputTextArea($query1['tb_data_pembimbing_pertanyaan'], 'Pertanyaan', 'pertanyaan', 'false', $_GET['action'],'rows="10" cols="50"'); ?>
<?= inputTextArea($query1['tb_data_pembimbing_jawaban'], 'Jawaban', 'jawaban', 'false', $_GET['action'],'rows="10" cols="50"'); ?>

<div id="myModal" class="modal fade bs-example-modal-lg" role="dialog" style="width:600px;">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">DATA UMAT</h4>
      </div>
      <div class="modal-body">
       <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                <th style="width:50%;text-align:center;">NIK UMAT</th>
                <th style="width:50%;" class="hidden-phone">Nama Daerah</th>
            </tr>
        </thead>
        <tbody id="frmItem">
		<tbody>
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<div class="form-actions row-fluid">
<div class="span7 offset3">
    <button type="button" onclick="saveDataPembimbing('<?= $cekMenu['menu_function_link']; ?>', 'update',1);" class="btn btn-primary"><i class="icon-ok"></i> Simpan</button>
	<button type="button" onclick="saveDataPembimbing('<?= $cekMenu['menu_function_link']; ?>', 'update',2);" class="btn btn-primary"><i class="icon-ok"></i> Simpan dan Keluar</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Batal</button>
</div>
</div>


<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />
