
<?= inputLovNew('tb_personal_identity_id', 'tb_personal_identity_name', '', 'Nama Keluarga', 'personal_identity', 'true', $_GET['action'], 'false', '', ''); ?>
<button type="button" onclick="addItemFR();" class="btn"><i class="icon-plus"></i> Add Item</button><br/>
<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th style="width:30%;text-align:center;vertical-align: middle;">Code</th>

            <th style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Nama</th>
        </tr>
    </thead>
    <tbody id="item">

    </tbody>
</table>
<input type="hidden" id="counter" value="0" />

<div class="form-horizontal">
    <div class="span7 offset3">
        <button type="button" onclick="saveFamily('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
        <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
    </div>
</div>