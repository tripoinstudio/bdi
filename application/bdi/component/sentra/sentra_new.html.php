<?= inputLovNew('tb_province_id', 'tb_province_name','', 'Pilih Daerah','province','true', $_GET['action'], 'false', '',''); ?>
<?= inputGeneral('....', 'Nama Sentra', 'name', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Description', 'remarks', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate('Daerah', '<div class="control-group" id="lovDaerahs"></div>'); ?>
<button onclick="return addName();" id="create" class="btn btn-primary" data-original-title="" title=""><i class="gicon-plus "></i> Tambah Sentra</button>
<br/>
<br/>
<div class="control-group" id="frmItem"></div>


<div class="form-horizontal">
<div class="span7 offset3">
    <button type="button" onclick="saveSentra('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
</div>
</div>