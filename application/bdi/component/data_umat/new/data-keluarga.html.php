<b><?= TITLE_KELUARGA; ?></b>
<br/>
<br/>
<br/>
<?= inputGeneralTemplate('Nama', '<div class="control-group" id="lovName"></div>'); ?>

<button onclick="return addName();" id="create" class="btn btn-primary" data-original-title="" title=""><i class="icon-plus icon-white"></i> Tambah Nama</button>

<br/>
<br/>
<div class="control-group" id="frmItem"></div>


<b><?= TITLE_KELUARGA2; ?></b>
<br/>
<br/>
<br/>
<?= inputGeneralTemplate('Nama', '<div class="control-group" id="lovNames"></div>'); ?>

<div class="form-row control-group row-fluid">
    <label class="control-label span1">Nama 
    </label>
    <input type="text"  id="nameKels" name="name" placeholder="" class="span3" />
<input type="hidden"  id="nameIdKels" name="nameIdKels" value="0" placeholder="" class="span3" />
    <label class="control-label span2">Hubungan 
    </label>
    <!--<input type="text"  id="nameHubs" name="name" placeholder="" class="span3" />-->
    <select id="nameHubs" class="input-large m-wrap" data-placeholder="Choose a Name" tabindex="1">
	
	</select>

</div>
<input type="hidden" id="countername" value="0" />

    