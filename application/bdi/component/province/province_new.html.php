<? // inputLov('Pilih Negara', 'lovcountry', 'lovcountrys','country', $_GET['action'], '', ''); ?>
<?php //= inputLovNew('tb_country_id', 'tb_country_name','', 'Pilih Negara','country','true', $_GET['action'], 'false', '',''); ?>
<?= inputGeneral('....', 'Kode Daerah', 'code', 'true', $_GET['action']); ?>
<?= inputGeneral('....', 'Nama Daerah', 'name', 'true', $_GET['action']); ?>
<?= inputTextArea('....', 'Description', 'remarks', 'true', $_GET['action']); ?>


<div class="form-actions row-fluid">
<div class="span7 offset3">
    <button type="button" onclick="saveProvince('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
</div>
</div>
