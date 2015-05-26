

<?php if ($_GET['content'] == 'cetak_umat_almt') { ?>
    
<?= inputGeneral('....', 'Cari Alamat', 'cari_alamat', 'true', 'new'); ?>
<?php //= inputGeneral('....', 'Cari No Telp Rumah', 'cari_tlp', 'true', 'new'); ?>
<?php /*= inputGeneralTemplate('Cari Alamat', '
                    <input type="text"  id="cari_alamat" name="cari_alamat2" placeholder="..." class="span2" />
                    
                    '); */
?>
<?= inputGeneralTemplate('Cari No Telp Rumah', '
                    <input type="text"  id="first_telp_rumah" name="first_telp_rumah2" onkeypress="return maxFourNumber(event,this)" placeholder="021" class="span2" /> - 
                    <input type="text"  id="last_telp_rumah" name="last_telp_rumah2" onkeyup="return maxEightNumber(event,this);" placeholder="12345678" class="span6" />
                    ');
?>
<button onclick="return findUmat();" id="createitem" class="btn btn-primary" data-original-title="" title=""><i class="gicon-search"></i> Cari</button>
<br/>
<br/>
<br/>

<br/><div id="tables-umat"></div>
<div id="table-search-umat">
    <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                
                <th style="width:5%;text-align:center;" class="hidden-phone">No</th>
				<th style="width:5%;text-align:center;" class="hidden-phone">NIK</th>
                <th style="width:25%;" class="hidden-phone">Nama Sesuai KTP</th>
				 <th style="width:45%;" class="hidden-phone">Alamat Tinggal Sekarang</th>
				  <th style="width:25%;" class="hidden-phone">No Telp</th>
            </tr>
        </thead>
        <tbody id="frmItem">
            
        </tbody>
    </table>
</div>	

<?php } ?>
<div id="frmCheck">

</div>
<input type="hidden" id="countername" value="0" />
<input type="hidden" id="created_by" value="<?=$_SESSION['username'];?>" />
<input type="hidden" id="countercheck" value="0" />
<input type="hidden" id="tableup" value="cetak_umat" />
<input type="hidden" id="filename" value="cetak_umat_almt" />