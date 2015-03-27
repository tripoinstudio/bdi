
<?= inputLov('Pilih Daerah', 'lovsentra', 'lovsentras', 'sentra', $_GET['action'], '', ''); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneral('....', 'Nama Cetya', 'name', 'true', $_GET['action']); ?>
<?= inputTextArea('....', 'Deskripsi', 'remarks', 'true', $_GET['action']); ?>


<div class="form-horizontal">
<div class="span7 offset3">
    <button type="button" onclick="saveCetya('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
</div>
</div>