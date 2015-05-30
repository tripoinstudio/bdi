
<?= inputGeneralTemplate('Nik Umat / Nama', '
					<input type="text"  id="code_daerah" name="falsetitles[]" placeholder="..." class="span1"/>.<input type="text"  id="code_name" name="falsetitles[]" placeholder="..." class="span1"/>.<input type="text"  id="code_nik" name="falsetitles[]" placeholder="..." class="span1"/> / 
                    <input type="text"  id="name" name="falsetitles[]" placeholder="..." class="span4" /> 
                    
					<button type="button" class="btn btn-info btn-lg" style="margin-bottom: 10px;height:32px;" data-toggle="modal" onclick="findumatPop();">Search</button>
					<button type="button" class="btn btn-info btn-lg" style="margin-bottom: 10px;height:32px;" data-toggle="modal" onclick="resetClear();">Batal</button>
                    <br>
					<span id="itemUmatName"></span>
					<input type="hidden"  id="itemUmatId" value="" class="span4" /> 
					
					');
?>
<?=inputLovNew('tb_pembimbing_id', 'tb_pembimbing_name', '', 'Pembimbing', 'pembimbing', 'false', $_GET['action'], 'false', '', '','');?>
<? // inputLov('Pilih Negara', 'lovcountry', 'lovcountrys','country', $_GET['action'], '', ''); ?>
<?php //= inputLovNew('tb_country_id', 'tb_country_name','', 'Pilih Negara','country','true', $_GET['action'], 'false', '',''); ?>
<?= inputGeneral('....', 'Tanggal', 'tanggal', 'false', $_GET['action']); ?>
<?= inputGeneral('....', 'Judul Bimbingan', 'judul', 'false', $_GET['action']); ?>
<?= inputTextArea('....', 'Pertanyaan', 'pertanyaan', 'false', $_GET['action'],'rows="10" cols="50"'); ?>
<?= inputTextArea('....', 'Jawaban', 'jawaban', 'false', $_GET['action'],'rows="10" cols="50"'); ?>

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
    <button type="button" onclick="saveDataPembimbing('<?= $cekMenu['menu_function_link']; ?>', 'save',1);" class="btn btn-primary"><i class="icon-ok"></i> Simpan</button>
	<button type="button" onclick="saveDataPembimbing('<?= $cekMenu['menu_function_link']; ?>', 'save',2);" class="btn btn-primary"><i class="icon-ok"></i> Simpan dan Keluar</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Batal</button>
</div>
</div>
