<?php
if ($_GET['action'] == 'list') {
	$code_daerah = $_GET['code_daerah'];
	$code_name = $_GET['code_name'];
	$code_nik = $_GET['code_nik'];
	$name = $_GET['name'];
    $db = new Database();
    $db->connect();	
//	$db->select('tb_data_umat', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$db->sql("select u.tb_data_umat_id,tb_data_umat_code, tb_data_umat_nama_ktp, tb_province_code from tb_data_umat u INNER JOIN tb_data_umat_pembagian p ON u.tb_data_umat_id=p.tb_data_umat_id INNER JOIN tb_province pr ON p.tb_province_id=pr.tb_province_id where u.tb_data_umat_nama_ktp like '$code_name%' and u.tb_data_umat_nama_ktp like '$name%' and pr.tb_province_code like '$code_daerah%' and u.tb_data_umat_code like '$code_nik%'");
	$list_users = $db->getResult();
    echo json_encode($list_users);
} else if ($_GET['action'] == 'search') {
	//$startDate = $_GET['startDate'];
	//$endDate = $_GET['endDate'];
	// $startDate = date('Y-m-d', strtotime(str_replace('-', '/', $_GET['startDate'])));
    $startDate = date('Y-m-d', strtotime($_GET['startDate']));
	$endDate = date('Y-m-d', strtotime($_GET['endDate']));
	$pembimbing = $_GET['pembimbing'];
	$name = $_GET['name'];
	$dblist = new Database();
$dblist->connect();
//$dblist->select('tb_data_pembimbing', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
if($pembimbing == '' || $pembimbing == 0){
$dblist->sql("SELECT * FROM `tb_data_pembimbing` p INNER JOIN `tb_data_umat` u ON p.`tb_data_umat_id`=u.`tb_data_umat_id` where (p.`tb_data_pembimbing_tanggal` >= '$startDate' AND p.`tb_data_pembimbing_tanggal` <= '$endDate') AND u.`tb_data_umat_nama_ktp` like '$name%'");	
} else {
$dblist->sql("SELECT * FROM `tb_data_pembimbing` p INNER JOIN `tb_data_umat` u ON p.`tb_data_umat_id`=u.`tb_data_umat_id` where (p.`tb_data_pembimbing_tanggal` >= '$startDate' AND p.`tb_data_pembimbing_tanggal` <= '$endDate') AND u.`tb_data_umat_nama_ktp` like '$name%' AND `tb_pembimbing_id` = $pembimbing;");	
}



$list_query = $dblist->getResult();
?>

 <?php
 
 if(count($list_query) == 0){
	 echo 0;
 } else {
	 ?>
	 <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
        <thead>
            <tr>
                <th style="width:10%;text-align:center;">TGL Bimbingan</th>
                <th style="width:10%;" class="hidden-phone">Nik Umat</th>
                <th style="width:25%;text-align:center" class="hidden-phone">Nama Sesuai Ktp</th>
				<th style="width:30%;text-align:center" class="hidden-phone">Judul Bimbingan</th>
				<th style="width:25%;text-align:center" class="hidden-phone">Pembimbing</th>
				<th style="width:25%;text-align:center" class="hidden-phone">Action</th>
            </tr>
        </thead>
        <tbody id="frmItem">
   
	 <?php
            $no = 1;

            foreach ($list_query as $array_list_query) {
            //	$array_num_query=mysql_num_rows($list_query);
			$codeumat = idListViewTarget($array_list_query['tb_data_umat_id'], "data_umat", "tb_data_umat_code");
			$idumat = idListViewTarget($array_list_query['tb_data_umat_id'], "data_umat", "tb_data_umat_id");
			$nama_ktp = idListViewTarget($array_list_query['tb_data_umat_id'], "data_umat", "tb_data_umat_nama_ktp");
			$dblist->select('tb_data_umat_pembagian', '*', NULL, 'tb_data_umat_id=' . $idumat); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
                $list_umatbg = $dblist->getResult();
                foreach ($list_umatbg as $array_list_umatbg) {
                    $daerahid = $array_list_umatbg['tb_province_id'];
                }
			 $provinceid = idListViewTarget($daerahid, "province", "tb_province_code");
             $NIK = autoCodeUmat($provinceid, $nama_ktp, $codeumat);
			 $namapembimbing = idListViewTarget($array_list_query['tb_pembimbing_id'], "pembimbing", "tb_pembimbing_name");
                ?>
                <tr class="odd gradeX"  id="tr<?=$no;?>" onclick="checkedList('<?= $array_list_query['tb_province_id']; ?>','<?= $no; ?>');">
                    <td><?= date("d-m-Y", strtotime($array_list_query['tb_data_pembimbing_tanggal'])); ?></td>
                    <td><?= $NIK; ?></td>
					<td><?= $nama_ktp; ?></td>
					<td><?= $array_list_query['tb_data_pembimbing_judul']; ?></td>
					<td><?= $namapembimbing; ?></td>
        <?php include "function/actionlist.php"; ?>
                </tr>
                    <?php
                    $no++;
                    //	$array_list_query++;
                }
 
                //	mysql_close($query);							
                ?>	
            
<!-- Modal -->
    </tbody>
    </table>

<?php } } ?>

