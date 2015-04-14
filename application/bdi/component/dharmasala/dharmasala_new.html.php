<?= inputLovNew('tb_sentra_id', 'tb_sentra_name','', 'Pilih Daerah','sentra','true', $_GET['action'], 'true', '','select s.tb_sentra_id, p.tb_province_code, p.tb_province_name tb_sentra_name from tb_province p join tb_sentra s on p.tb_province_id = s.tb_sentra_province_id','onchange="setCetya();"'); ?>
<?= inputLovNew('tb_cetya_id', 'tb_cetya_name','', 'Pilih Cetya','cetya','true', $_GET['action'], 'true', '','select * from tb_cetya where tb_cetya_sentra_id='.$_GET['idlov']) ?>

<?= inputGeneral('....', 'Nama Dharmasala', 'name', 'true', $_GET['action']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneral('....', 'Deskripsi', 'remarks', 'true', $_GET['action']); ?>


<div class="form-horizontal">
<div class="span7 offset3">
    <button type="button" onclick="saveCetya('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
</div>
</div>