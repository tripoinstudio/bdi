<?php
require_once("function/component.php");
//$dblist = new Database();
//$dblist->connect();
$user_id_sekda = $_SESSION['user_id'];
$db->select('tb_group', 'tb_group_name', null, 'tb_group_id='.$_SESSION['id_group'] );
$namesekdas = $db->getResult();
$db->select('tb_user_province', 'tb_province_id', null, 'user_id='.$user_id_sekda );
$provincesekdas = $db->getResult();


$db->select('tb_sentra', 'tb_sentra_id', null, 'tb_sentra_province_id='.$provincesekdas[0]['tb_province_id'] );
$sentrasekda = $db->getResult();

$db->select('tb_distrik', 'tb_distrik_id', null, 'tb_sentra_id='.$sentrasekda[0]['tb_sentra_id'] );
$distriksekda = $db->getResult();

$db->select('tb_cetya', 'tb_cetya_id', null, 'tb_distrik_id='.$distriksekda[0]['tb_distrik_id'] );
$cetyasekda = $db->getResult();

if ($namesekdas[0]['tb_group_name'] == 'sekda'){
	//echo '<div>masuk enggak</div>';
	//$db->select('tb_data_umat', 'count(tb_data_umat_id) total', NULL, '');
$db->select('tb_data_umat_pembagian', 'count(tb_data_umat.tb_data_umat_id) total', 'tb_data_umat', 'tb_data_umat_pembagian.tb_data_umat_id=tb_data_umat.tb_data_umat_id AND tb_data_umat_pembagian.tb_province_id='.$provincesekdas[0]['tb_province_id']);
//$db->select('tb_data_umat', 'count(tb_data_umat_id) total', NULL, '');
	} else {
	$db->select('tb_data_umat', 'count(tb_data_umat_id) total', NULL, '');
}
    $totalUmat = $db->getResult();
	
	$db->select('tb_data_umat', 'count(tb_data_umat_id) total', NULL, '');
	$totalUmats = $db->getResult();
	//echo $user_id_sekda;
	//echo $totalUmat[0]['total'];
	if ($namesekdas[0]['tb_group_name'] == 'sekda'){
/*	$db->sql('SELECT tb_province.tb_province_name, 
					 COUNT(tb_province.tb_province_id) total_umat_daerah,
					 ROUND((COUNT(tb_province.tb_province_id)/'.$totalUmat[0]['total'].')*100,2) persentase
			  FROM tb_data_umat_pembagian JOIN tb_province WHERE tb_data_umat_pembagian.tb_province_id=tb_province.tb_province_id AND tb_province.tb_province_id='.$provincesekdas[0]['tb_province_id'].' group by tb_data_umat_pembagian.tb_province_id order by total_umat_daerah desc');
    $arrPersentaseUmatByProvince = $db->getResult(); */
	$db->sql('SELECT tb_province.tb_province_name, 
					 COUNT(tb_province.tb_province_id) total_umat_daerah,
					 ROUND((COUNT(tb_province.tb_province_id)/'.$totalUmats[0]['total'].')*100,2) persentase
			  FROM tb_data_umat_pembagian JOIN tb_province WHERE tb_data_umat_pembagian.tb_province_id=tb_province.tb_province_id group by tb_data_umat_pembagian.tb_province_id order by total_umat_daerah desc');
    $arrPersentaseUmatByProvince = $db->getResult();
	$db->sql('SELECT tb_cetya.tb_cetya_name, 
					 COUNT(tb_cetya.tb_cetya_id) total_umat_daerah,
					 ROUND((COUNT(tb_cetya.tb_cetya_id)/'.$totalUmat[0]['total'].')*100,2) persentase
			  FROM tb_data_umat_pembagian JOIN tb_cetya JOIN tb_province WHERE tb_data_umat_pembagian.tb_cetya_id=tb_cetya.tb_cetya_id AND tb_data_umat_pembagian.tb_province_id='.$provincesekdas[0]['tb_province_id'].' AND tb_province.tb_province_id='.$provincesekdas[0]['tb_province_id'].' group by tb_data_umat_pembagian.tb_cetya_id order by total_umat_daerah desc');
    $arrPersentaseUmatByCetya = $db->getResult();
	} else {
		$db->sql('SELECT tb_province.tb_province_name, 
					 COUNT(tb_province.tb_province_id) total_umat_daerah,
					 ROUND((COUNT(tb_province.tb_province_id)/'.$totalUmat[0]['total'].')*100,2) persentase
			  FROM tb_data_umat_pembagian JOIN tb_province WHERE tb_data_umat_pembagian.tb_province_id=tb_province.tb_province_id group by tb_data_umat_pembagian.tb_province_id order by total_umat_daerah desc');
    $arrPersentaseUmatByProvince = $db->getResult();
	$db->sql('SELECT tb_cetya.tb_cetya_name, 
					 COUNT(tb_cetya.tb_cetya_id) total_umat_daerah,
					 ROUND((COUNT(tb_cetya.tb_cetya_id)/'.$totalUmat[0]['total'].')*100,2) persentase
			  FROM tb_data_umat_pembagian JOIN tb_cetya WHERE tb_data_umat_pembagian.tb_cetya_id=tb_cetya.tb_cetya_id group by tb_data_umat_pembagian.tb_cetya_id order by total_umat_daerah desc');
    $arrPersentaseUmatByCetya = $db->getResult();
	}
	if (!isset($_SESSION['username'])) {
		$cekSession = 1;
	} else {
		$username = "'" . $_SESSION['username'] . "'";
		$db->select('tb_group', 'tb_group_name', null, 'tb_group_id='.$_SESSION['id_group'] );
		$listUser = $db->getResult();
	}
?>
<div class="row-fluid">
    <div class="span6 ">
        <div class="box color_3 title_big height_big paint_hover">
            <div class="title">
                <div class="row-fluid">
                    <div class="span12">
                        <h4><span>Aplikasi Database Umat BDI</span> </h4>
                    </div>
                    <!-- End .span12 --> 
                </div>
                <!-- End .row-fluid --> 

            </div>
            <!-- End .title -->
            <div class="content"  style="padding-top:35px;">

            </div>
        </div>
    </div>
    <!-- End .box .span6-->
    <div class="span6">
        <div class="row-fluid fluid">
            <div class="span6">
                <div class=" box color_2 height_medium paint_hover">
                    <div class="content numbers">
                        <?php							
							if($listUser[0]['tb_group_name'] == 'sekda'){	
							//	$user_id_sekda = $_SESSION['user_id'];
							//	$db->select('tb_user_province', 'tb_province_id', null, 'user_id='.$user_id_sekda );
							//	$provincesekdas = $db->getResult();
								$db->sql('SELECT tb_province.tb_province_name, 
											COUNT(tb_province.tb_province_id) total_umat_daerah,
											ROUND((COUNT(tb_province.tb_province_id)/'.$totalUmats[0]['total'].')*100,2) persentase
										FROM tb_data_umat_pembagian JOIN tb_province WHERE tb_data_umat_pembagian.tb_province_id=tb_province.tb_province_id AND tb_province.tb_province_id='.$provincesekdas[0]['tb_province_id'].' group by tb_data_umat_pembagian.tb_province_id order by total_umat_daerah desc');
								$arrPersentaseUmatByProvinceSekda = $db->getResult();   
								
						?>
                        <h3 class="value"><?= $totalUmats[0]['total']; ?></h3>
                        <div class="description mb5">Total Umat</div>
                        <h1 class="value">100%</h1>
                        <div class="description">Total Umat</div>
                    </div>
                </div>
            </div>
            <!-- End .span6 -->
            <div class="span6">
                <div class="box color_25 height_medium paint_hover">
                    <div class="content numbers">
                        <h3 class="value"><?= $arrPersentaseUmatByProvinceSekda[0]['total_umat_daerah']; ?></h3>
                        <div class="description mb5">Umat di <?= idListViewTarget($provincesekdas[0]['tb_province_id'], 'province', 'tb_province_name'); ?></div>
                        <h1 class="value"><?= $arrPersentaseUmatByProvinceSekda[0]['persentase']?><span class="percent">%</span></h1>
                        <div class="description">Umat di <?= idListViewTarget($provincesekdas[0]['tb_province_id'], 'province', 'tb_province_name'); ?></div>
                    </div>
                </div>
            </div>
            <!-- End .span6 --> 
                    <?php
							}else{
								$db->sql('SELECT tb_province.tb_province_name, 
											COUNT(tb_province.tb_province_id) total_umat_daerah,
											ROUND((COUNT(tb_province.tb_province_id)/'.$totalUmat[0]['total'].')*100,2) persentase
										FROM tb_data_umat_pembagian JOIN tb_province WHERE tb_data_umat_pembagian.tb_province_id=tb_province.tb_province_id group by tb_data_umat_pembagian.tb_province_id order by total_umat_daerah desc');
								$arrPersentaseUmatByProvinceSekda = $db->getResult();
						?>
                        <h3 class="value"><?= $totalUmats[0]['total']; ?></h3>
                        <div class="description mb5">Total Umat</div>
                        <h1 class="value">100%</h1>
                        <div class="description">Total Umat</div>
                    </div>
                </div>
            </div>
            <!-- End .span6 -->
            <div class="span6">
                <div class="box color_25 height_medium paint_hover">
                    <div class="content numbers">
                        <h3 class="value">-</h3>
                        <div class="description mb5">Umat di -</div>
                        <h1 class="value">-<span class="percent">%</span></h1>
                        <div class="description">Umat di -</div>
                    </div>
                </div>
            </div> 
                   <?php
							}
						?>     
                        
        </div>
        <!-- End .row-fluid -->
        <div class="row-fluid fluid">
            <div class="span6">
                <div class=" box color_26 height_medium paint_hover">
                    <div class="content icon big_icon"> <a href="javascript:void(0)" onclick="showMenu('data_umat', 'List Data Umat');" ><img align="center" src="img/general/contacts_icon.png" /></a>
                        <div class="description">LIST UMAT</div>
                    </div>
                </div>
            </div>
            <!-- End .span6 -->
            <div class="span6">
                <div class=" box color_26 height_medium paint_hover">
                    <div class="content icon big_icon"> <a href="javascript:void(0)" onclick="showMenu('data_umat', 'Tambah Data Umat');" ><img align="center" src="img/general/contacts_icon.png" /></a>
                        <div class="description">TAMBAH UMAT</div>
                    </div>
                </div>
            </div>
            <!-- End .span6 --> 
        </div>
        <!-- End .row-fluid --> 

    </div>
    <!-- End.span6--> 
</div>
<!-- End .row-fluid -->

<div class="row-fluid">
    <div class="span8">
        <div class="box height_big paint">
            <div class="title">
                <h4> <span>Jumlah umat berdasarkan Daerah</span> </h4>
            </div>
            <!-- End .title -->
            <div class="content full">
                <table id="datatable_example" class="responsive table table-hover full">
                    <thead>
                        <tr>
                            <th class="jv no_sort"> No </th>
                            <th class="ue"> Daerah </th>
                            <th class="ms no_sort "> Jumlah </th>
                            <th class="Yy to_hide_phone"> % Jumlah </th>
                        </tr>
                    </thead>
                    <tbody>
						<?php
							$no = 0;
							foreach ($arrPersentaseUmatByProvince as $persentaseUmatByProvince) {							
								$no++;
						?>
                        <tr>
                            <td><?=  $no;?></td>
                            <td><?=  $persentaseUmatByProvince['tb_province_name'];?></td>
                            <td class="ms"><?= $persentaseUmatByProvince['total_umat_daerah'];?> Umat</td>
                            <td class="to_hide_phone"><?= $persentaseUmatByProvince['persentase'];?>%</td>
                        </tr>
						<?php
							}
						?>
                    </tbody>
                </table>
            </div>
            <!-- End .content -->
            <div class="description"><?=ucwords(Terbilang($no));?> Daerah dengan jumlah umat terbanyak secara keseluruhan <i class="gicon-info-sign icon-white"></i></div>
        </div>

        <!-- End .box --> 
    </div>
    <!-- End .span8 -->


                        <?php							
							if($listUser[0]['tb_group_name'] == 'sekda'){									                                
						?>

    <div class="span4">
        <div class="box height_big paint">
            <div class="title">
                <h4> <span>Cetya di <?= idListViewTarget($provincesekdas[0]['tb_province_id'], 'province', 'tb_province_name'); ?></span> </h4>
            </div>
            <!-- End .title -->

            <ul class="users unstyled content">
				<?php
					$no = 0;
					foreach ($arrPersentaseUmatByCetya as $persentaseUmatByCetya) {							
						$no++;
				?>
                <li>
                    <div class="info row-fluid"><span class="number pull-left text_color_0"><?=  $no;?></span>
                        <h2 class="pull-left">Cetya <?=  $persentaseUmatByCetya['tb_cetya_name'];?></h2>
                    </div>
                    <div class="row-fluid">
                        <div class="progress small" style="width: <?=  $persentaseUmatByCetya['persentase'];?>%;"></div>
                        <div class="value"><?=  $persentaseUmatByCetya['total_umat_daerah'];?> Umat</div>
                    </div>
                </li>
				<?php
					}
				?>
            </ul>
			
            <!-- End .content -->
            <div class="description"><?=ucwords(Terbilang($no));?> Cetya dengan jumlah umat terbanyak pada Daerah <?= idListViewTarget($provincesekdas[0]['tb_province_id'], 'province', 'tb_province_name'); ?> <i class="gicon-info-sign icon-white"></i> </div>
        </div>
        <!-- End .box --> 
    </div>
    <!-- End .span4 -->
    
                <?php
				}else{
				?>

    <div class="span4">
        <div class="box height_big paint">
            <div class="title">
                <h4> <span>Cetya di semua Daerah</span> </h4>
            </div>
            <!-- End .title -->
<div class="scrollbar" style="height: 250px;overflow:scroll;">
            <ul class="users unstyled content">
				<?php
					$no = 0;
					foreach ($arrPersentaseUmatByCetya as $persentaseUmatByCetya) {							
						$no++;
				?>
                <li>
                    <div class="info row-fluid"><span class="number pull-left text_color_0"><?=  $no;?></span>
                        <h2 class="pull-left">Cetya <?=  $persentaseUmatByCetya['tb_cetya_name'];?></h2>
                    </div>
                    <div class="row-fluid">
                        <div class="progress small" style="width: <?=  $persentaseUmatByCetya['persentase'];?>%;"></div>
                        <div class="value"><?=  $persentaseUmatByCetya['total_umat_daerah'];?> Umat</div>
                    </div>
                </li>
				<?php
					}
				?>
            </ul>
			
            <!-- End .content -->
            <div class="description"><?=ucwords(Terbilang($no));?> Cetya dengan jumlah umat terbanyak secara keseluruhan <i class="gicon-info-sign icon-white"></i> </div>
</div>       
	   </div>
        <!-- End .box --> 
    </div>
    <!-- End .span4 -->
    
				<?php
				}
				?>        
     
</div>
<!-- End .row-fluid -->

<div class="row-fluid">
<!--<div class="row-fluid box color_2 title_medium height_medium2 bar_stats paint_hover" style="cursor: pointer;" onclick="window.open('http://www.mnsbdi.org', '_blank');">-->
    <div class="row-fluid box color_2 title_medium height_medium2 bar_stats paint_hover" >
        <div class="title hidden-phone">
            <a href="http://www.mnsbdi.org" target="_blank" >
            <h5><span>Website MNSBDI</span></h5>
            </a>
        </div>
        <!-- End .title -->

        <!-- End .row-fluid --> 
        <!-- End .content --> 
    </div>
    <!-- End .box --> 

</div>
<!-- End .row-fluid -->

<div class="row-fluid">
<!--    <div class="row-fluid box color_27 title_medium height_medium2 bar_stats paint_hover" style="cursor: pointer;" onclick="window.location='http://www.mnsbdi.org:2095/3rdparty/roundcube/index.php?_task=mail';"> -->
<!--    <div class="row-fluid box color_27 title_medium height_medium2 bar_stats paint_hover" style="cursor: pointer;" onclick="window.open('http://www.mnsbdi.org:2095/3rdparty/roundcube/index.php?_task=mail', '_blank');">-->
        <div class="row-fluid box color_27 title_medium height_medium2 bar_stats paint_hover">
        <div class="title hidden-phone">
            <a href="http://www.mnsbdi.org:2095/3rdparty/roundcube/index.php?_task=mail" target="_blank" >
            <h5><span>Webmail Login</span></h5>
            </a>
        </div>
        <!-- End .title -->
        <div class="content row-fluid fluid numbers">   

        </div>
        <!-- End .row-fluid --> 
        <!-- End .content --> 
    </div>
    <!-- End .box --> 

</div>
<!-- End .row-fluid -->

<div class="row-fluid">


</div>
<!-- End .row-fluid --> 

<!-- End #container --> 