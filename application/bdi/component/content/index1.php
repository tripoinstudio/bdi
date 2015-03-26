<div id="main">
    <div class="container">
        <div class="header row-fluid">
            <div class="logo"> <a href="index.html"><span>MNSBDI</span><span class="icon"></span></a> </div>
            <div class="top_right">
                <ul class="nav nav_menu">
                    <li class="dropdown"> <a class="dropdown-toggle administrator" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
                            <div class="title"><span class="name"><?=$fullname;?></span><span class="subtitle">Admin</span></div>
                            <span class="icon"><img src="img/logo-mnsbdi73.png"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            <li><a href="#"><i class=" icon-user"></i> Profil Akun</a></li>
                            <li><a href="#"><i class=" icon-cog"></i>Ubah Password</a></li>
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
        <p> &copy; MNSBDI - Aplikasi Database Umat BDI 2015 </p>
        <span class="company_logo"><a href="https://www.desolution.net"></a></span> </div>
</div>