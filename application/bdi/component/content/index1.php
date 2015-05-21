<?php
$db->select('tb_group', '*', NULL, 'tb_group_id= ' . $groupas . ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasilGroup = $db->getResult();
    //$query = mysql_query("SELECT * FROM tb_user WHERE user_username = '$username'");
    //$hasil = mysql_fetch_array($query);

    foreach ($hasilGroup as $array_hasil_group) {
        $groupName = $array_hasil_group['tb_group_name'];
    }
?>

<div id="main">
    <div class="container">
        <div class="header row-fluid">
            <div class="logo"> <a href="."><span>MNSBDI</span><span class="icon"></span></a> </div>
            <div class="top_right">
                <ul class="nav nav_menu">
                    <li class="dropdown"> <a class="dropdown-toggle administrator" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
                            <div class="title"><span class="name"><?=$fullname;?></span><span class="subtitle"><?=$groupName;?></span></div>
                            <span class="icon"><img src="img/user/default.png" width="73" height="68"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            <li><a href="javascript:void(0);" onclick="showProfile('profile', 'Profile');"><i class=" icon-user"></i> Profil Akun</a></li>
                            <li><a href="javascript:void(0);" onclick="showMenu('change-password', 'Change Password');"><i class=" icon-cog"></i>Ubah Password</a></li>
                            <li><a href="index.php?action=logout"><i class=" icon-unlock"></i>Log Out</a></li>
                            <li><a href="#"><i class=" icon-flag"></i>Bantuan</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- End top-right --> 
        </div>
        <div id="main_container">
            <span id="txtHint">
                
                <?php include "component/content/index3.php"; ?>
            </span>

            <input type='hidden' value='0' id='setjson' />
            <!-- END GRID SAMPLE PORTLET-->
        </div>
        <!-- End #container --> 
    </div>
    <div id="footer">
        <p> &copy; MNSBDI - Aplikasi Database Umat BDI 2015 
		<span style="font-size:10px;padding-left:600px;">powered by - <img src="img/tripoin.png" width="15" height="15"></img> tripoin.inc</span>
       </p> <!--<span class="company_logo"><a href="https://www.tripoin.com"></a></span> </div>-->
</div>