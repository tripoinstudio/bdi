
<?php if ($_GET['action'] == 'save') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been added<strong> Successfully</strong> 
    </div>
<?php } else if ($_GET['action'] == 'delete') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been Delete<strong> Successfully</strong> 
    </div>
<?php } ?>	
<?php if ($_GET['content'] == 'data_pembimbing') { ?>
<?=inputGeneral('....', 'Nama', 'nama', 'true', 'new'); ?>
<?=inputLovNew('tb_pembimbing_id', 'tb_pembimbing_name', '', 'Pembimbing', 'pembimbing', 'false', 'new', 'false', '', '','');?>
<?= inputGeneralTemplate('Tanggal Bimbingan', '
                    <input type="text"  id="startDate" name="startDate" onkeypress="return maxFourNumber(event,this)" value="'.date('d-m-Y').'" class="span2" /> s/d 
                    <input type="text"  id="endDate" name="endDate" onkeyup="return maxEightNumber(event,this);" value="'.date('d-m-Y').'" class="span2" />
                    ');
?>
<button onclick="return findDataBimbingan();" id="findData" class="btn btn-primary" data-original-title="" title=""><i class="gicon-search"></i> Cari</button>
<br/>
<br/>
<br/>
<div id="loadingser"></div>
<div id="pageFind">
    
	</div>
			<?php }  ?>

<input type="hidden" id="checkDelete" value="0"/>
<input type="hidden" id="jumDel" value="0" />
<input type="hidden" id="firstRowField" value="0" />
<input type="hidden" id="jumlahlist" value="<?=count($list_query);?>" />
