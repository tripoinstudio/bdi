

<?php if ($_GET['content'] == 'distrik') { ?>
    
<?= inputGeneralTemplate('Sentra', '<div class="control-group" id="lovDaerahs"></div>'); ?>
<button onclick="return addSentra(0,2);" id="createitem" class="btn btn-primary" data-original-title="" title=""><i class="gicon-plus"></i> Tambah Distrik</button>
<br/>
<br/>
    <table id="table-item" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                
                <th style="width:10%;text-align:center;">#</th>
                <th style="width:90%;" class="hidden-phone">Name</th>
            </tr>
        </thead>
        <tbody id="frmItem">
            
        </tbody>
    </table>

<?php } ?>
<div class="span7">
    <button id="buttonsaveitem" type="button" onclick="saveDistrik('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
</div>
<br/>
<br/>
<input type="hidden" id="countername" value="0" />
<input type="hidden" id="tableup" value="sentra" />
<input type="hidden" id="filename" value="distrik" />