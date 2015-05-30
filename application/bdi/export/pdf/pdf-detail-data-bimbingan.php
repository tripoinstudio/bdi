<?php
 $id = $_GET['id'];
//echo $id;
  //  $result2 = mysql_query("select * from tb_data_pembimbing where tb_data_pembimbing_id=" . $id);
 //   $query1 = mysql_fetch_array($result2);
 $db = new Database();
    $db->connect();	
 $db->select('tb_data_pembimbing', '*', NULL, 'tb_data_pembimbing_id=' . $id); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_query = $db->getResult();

            foreach ($list_query as $query1) {
                ?>


<?php 

//	$db->select('tb_data_umat', '*', NULL, ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$db->sql("select u.tb_data_umat_id,tb_data_umat_code, tb_data_umat_nama_ktp, tb_province_code from tb_data_umat u INNER JOIN tb_data_umat_pembagian p ON u.tb_data_umat_id=p.tb_data_umat_id INNER JOIN tb_province pr ON p.tb_province_id=pr.tb_province_id where u.tb_data_umat_id=".$query1['tb_data_umat_id']);
	$listdataumat = $db->getResult();
	
foreach ($listdataumat as $arraylistdataumat) {
	$namaumat = $arraylistdataumat['tb_data_umat_nama_ktp'];
	$codeumat = $arraylistdataumat['tb_data_umat_code'];
	$codedaerah = $arraylistdataumat['tb_province_code'];
}
 ?>
 
 <link type="text/css" href="css/pdf-style.css" rel="stylesheet" />
 <page backtop="14mm" backbottom="14mm" backleft="10mm" backright="10mm" style="font-size: 12pt">

    <div class="title"><?= $namePage; ?> </div>
    <div class="subtitle">DATA BIMBINGAN</div>
    <br/>
    <table style="width: 100%;" >
            <tr>
                <th style="height: 30px;width: 30%;">NIK</th>
				<td style="width: 70%;"> <?=autoCodeUmat($codedaerah, $namaumat, $codeumat);?></td>
            </tr>
			 <tr>
                <th style="height: 30px;">Nama</th>
				  <td> <?=$namaumat;?></td>
            </tr>
			<tr>
                <th style="height: 30px;">Pembimbing</th>
				  <td> <?= idListViewTarget($query1['tb_pembimbing_id'], 'pembimbing', 'tb_pembimbing_name'); ?></td>
            </tr>
			<tr>
                <th style="height: 30px;">Judul</th>
				  <td> <?=$query1['tb_data_pembimbing_judul'];?></td>
            </tr>
			

    </table>
	 <div style="text-align: justify;
    text-justify: inter-word;"><br/><b>Pertanyaan</b><br/>
				<?=$query1['tb_data_pembimbing_pertanyaan'];?>
				<br/><br/>
				<b>Jawaban</b><br/>
				<?=$query1['tb_data_pembimbing_jawaban'];?>
				
				</div>
	<br/>
	<br/>
	<?php
	
	if($query1['update_by'] == '' || $query1['update_by'] == ''){
		$creupd = $query1['created_by'];
		$creupddate = subMonth($query1['created_date']);
		$creupdhost = $query1['created_host'];
	} else {
		$creupd = $query1['update_by'];
		$creupddate = subMonth($query1['update_date']);
		$creupdhost = $query1['update_host'];
	
	}
	?>
	<table style="font-size:12px;">
	<tr>
	<td>UPDATE TERAKHIR</td>
	<td>:</td>
	<td ><?=$creupddate;?>|<?=$creupdhost;?>|<?=$creupd;?></td>
	</tr>
	</table>

 
			<?php } ?>
			</page>
