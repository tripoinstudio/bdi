<?php
//$item = json_decode($_GET['item']);
ob_start(); 
$parentuser = "";
$id = $_GET['id'];

$dblist = new Database();
$dblist->connect();
$dblist->select('tb_data_umat', '*', NULL, 'tb_data_umat_id='.$id);
    $list_query = $dblist->getResult();
	?>
	 <?php
            $no = 0;
            foreach ($list_query as $array_list_query) {
              //  $no++;
			   $namaktp = $array_list_query['tb_data_umat_nama_ktp'];
			   $namapanggilan = $array_list_query['tb_data_umat_nama_panggilan'];
			   $alamatktp = $array_list_query['tb_data_umat_alamat_ktp'];
			   $tempat = $array_list_query['tb_data_umat_tempat'];
			   $tgl_lahir = $array_list_query['tb_data_umat_tgl_lahir'];
			   $kewarganegaraan = $array_list_query['tb_data_umat_kewarganegaraan'];
			   $gender = $array_list_query['tb_data_umat_gender'];
			   
			//   $alamatktp = $array_list_query['tb_data_umat_alamat_ktp'];
                ?>
              <?php
                $dblist->select('tb_data_umat_pembagian', '*', NULL, 'tb_data_umat_id=' . $array_list_query['tb_data_umat_id']); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
                $list_umatbg = $dblist->getResult();
                foreach ($list_umatbg as $array_list_umatbg) {
                    $daerahid = $array_list_umatbg['tb_province_id'];
                    $sentraid = $array_list_umatbg['tb_sentra_id'];
                    $distrikid = $array_list_umatbg['tb_distrik_id'];
                    $cetyaid = $array_list_umatbg['tb_cetya_id'];
                    $dharmasalaid = $array_list_umatbg['tb_dharmasala_id'];
                }
                $provinceid = idListViewTarget($daerahid, "province", "tb_province_code");
                $NIK = autoCodeUmat($provinceid, $array_list_query['tb_data_umat_nama_ktp'], $array_list_query['tb_data_umat_code']);
                $province = idListViewTarget($daerahid, "province", "tb_province_name");
                $sentra = idListViewTarget($sentraid, "sentra", "tb_sentra_name");
                $distrik = idListViewTarget($distrikid, "distrik", "tb_distrik_name");
                $cetya = idListViewTarget($cetyaid, "cetya", "tb_cetya_name");
                $dharmasala = idListViewTarget($dharmasalaid, "dharmasala", "tb_dharmasala_name");
                ?>
                
            <?php } ?>
	

<style>

.table {
	width:90%;
    height: 40px;
    vertical-align: middle;

}
.table tr th{
    font-family: arial;
    text-align: left;
    font-weight: bold;
    font-size: 12px;

}
.table tr td{
    padding-left: 10px;
    font-size: 12px;
}
.tableno{
    text-align: center;height: 15px;padding-right: 10px;
}
.title{
    font-size: 20px;
    font-weight: bold;
}
.subtitle{
    font-size: 14px;
}
.page{
    
    padding-left: 30px;
    padding-top: 30px;

}
</style>

<div class="page">
    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">DETAIL DATA UMAT BDI</div>
    <br/>
	
	 <div>DATA UMAT</div>
    <table class="table" style="border:1px;">
            <tr>
                <th style="width:30%;" class="hidden-phone" >NIK Umat</th>
                <td style="width:60%;" class="hidden-phone"><?=$NIK;?></td>
                
            </tr>
			 <tr>
                <th style="width:30%;" class="hidden-phone" >Nama</th>
                <td style="width:70%;" class="hidden-phone"><?=$namaktp;?></td>
                
            </tr>
			<tr>
                <th style="width:30%;" class="hidden-phone" >Nama Panggilan</th>
                <td style="width:70%;" class="hidden-phone"><?=$namapanggilan;?></td>
                
            </tr>
			<tr>
                <th style="width:30%;" class="hidden-phone" >Jenis Kelamin</th>
                <td style="width:70%;" class="hidden-phone"><?=$gender;?></td>
                
            </tr>
			<tr>
                <th style="width:30%;" class="hidden-phone" >Tempat Tgl Lahir</th>
                <td style="width:70%;" class="hidden-phone"><?=$tempat;?> , <?=subMonth($tgl_lahir);?></td>
                
            </tr>

           


    </table>
</div>