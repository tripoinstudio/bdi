<div class="control-group">
    <label class="control-label">Kode Group</label>
    <div class="controls">
        <input type="text" id="code" placeholder="...." class="input-small" />
        <span class="help-inline">Some hint here</span>
    </div>
</div>
<div class="control-group">
    <label class="control-label"> Nama Group</label>
    <div class="controls">
        <input type="text" id="name" placeholder="...." class="input-medium" />
        <span class="help-inline">Some hint here</span>
    </div>
</div>

<div class="form-actions">
    <button type="button" onclick="saveGroup('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>