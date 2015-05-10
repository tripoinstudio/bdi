<?php if ($_GET['content'] == 'sentra') { ?>

<?= inputGeneralTemplate('Daerah', '<div class="control-group" id="lovDaerahs"></div>'); ?>
<div class="inline"><button onclick="return addSentra(0,2);" id="createitem" class="btn btn-primary" data-original-title="" title=""><i class="gicon-plus"></i> Tambah Sentra</button>
</div><div class="inline" id="proses_loading_item"></div>
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

<br/>

<div class="span7">
    <button id="buttonsaveitem" type="button" onclick="saveSentra('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
</div>
<br/>
<br/>
<input type="hidden" id="countername" value="0" />

<input type="hidden" id="tableup" value="province" />
<input type="hidden" id="filename" value="sentra" />