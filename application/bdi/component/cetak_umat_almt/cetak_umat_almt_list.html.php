

<?php if ($_GET['content'] == 'cetak_umat_almt') { ?>
    
<?= inputGeneral('....', 'Cari Alamat', 'cari_alamat', 'true', 'new'); ?>
<?= inputGeneral('....', 'Cari No Telp Rumah', 'cari_tlp', 'true', 'new'); ?>
<button onclick="return findUmat();" id="createitem" class="btn btn-primary" data-original-title="" title=""><i class="gicon-search"></i> Cari</button>
<br/>
<br/>
<br/>

<br/><div id="tables-umat"></div>
<div id="table-search-umat">
    <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                
                <th style="width:5%;text-align:center;">No</th>
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

<input type="hidden" id="countername" value="0" />
<input type="hidden" id="tableup" value="cetak_umat" />
<input type="hidden" id="filename" value="cetak_umat_almt" />