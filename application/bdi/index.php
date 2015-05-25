<?php
session_start();
require_once("class/mysql_crud.php");
include("function/function.php");
//require_once("configuration.php");
//date_default_timezone_set("Asia/Jakarta");
if (!isset($_SESSION['username'])) {
//	header('location:index.php');
    $cekSession = 1;
} else {

    $username = "'" . $_SESSION['username'] . "'";
    $company_code = $_SESSION['company_code'];

    $cekSession = 2;
    $db = new Database();
    $db->connect();
    $db->select('tb_user', '*', NULL, 'user_username = ' . $username . ''); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasil = $db->getResult();
    //$query = mysql_query("SELECT * FROM tb_user WHERE user_username = '$username'");
    //$hasil = mysql_fetch_array($query);

    foreach ($hasil as $array_hasil) {
        $fullname = $array_hasil['user_fullname'];
        $groupas = $array_hasil['tb_group_id'];
    }

    $db->select('tb_settings', '*', NULL, 'tb_settings_code = "' . $company_code . '"'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $hasilSetting = $db->getResult();


    foreach ($hasilSetting as $array_settings) {
        $nameTitle = $array_settings['tb_settings_name'];
        $favicon = $array_settings['tb_settings_favicon'];
    }

    $db->sql("SELECT * FROM `structure_menu` s INNER JOIN `menu_function` m ON s.`menu_function_id`=m.`menu_function_id`  WHERE m.`menu_function_link`='setting'");
    $cekmensetting = $db->getResult();
    foreach ($cekmensetting as $cekmensettings) {
        // $noi += 1;
        // $menuid = $cekmens['menu_function_id'];
        $cekactionsetting = explode(',', $cekmensettings['structure_menu_action']);
    }

	if ($_SESSION['timeout'] + (30*60)< time()) {
		 logout();
		echo "<script>setTimeout(\"location.href = '.';\",0);</script>";
     // session timed out
  } else {
	  $_SESSION['timeout'] = time();
     // session ok
  }

    if (isset($_GET['action']) == 'logout') {
        logout();
		echo "<script>setTimeout(\"location.href = '.';\",0);</script>";
    } else {
        
    }
}
?>
<!DOCTYPE html>
<html lang="en"> 
    <head>
        <meta charset="utf-8" />
        <title><?= $nameTitle; ?> :: Application</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!--       <link href="assets/bootstrap/css/bootstrap.min_1.css" rel="stylesheet" />
               <link href="assets/bootstrap/css/bootstrap-responsive.min_1.css" rel="stylesheet" />
               <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
               <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
               <link href="css/style.css" rel="stylesheet" />
               <link href="css/style_responsive.css" rel="stylesheet" />
               <link href="assets/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet" />
               <link href="css/style_default.css" rel="stylesheet" id="style_color" />
        -->
        <link rel="shortcut icon" href="<?=$favicon;?>">
        <link href="css/twitter/bootstrap.css" rel="stylesheet" />
        <link href="css/base.css" rel="stylesheet" />
        <link href="css/twitter/responsive.css" rel="stylesheet" />
        <link href="assets/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
		<link href="css/style_self.css" rel="stylesheet" />
        
        <link href="css/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
        <script src="js/plugins/modernizr.custom.32549.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />

        <!--
                <link href="assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
                <link rel="stylesheet" type="text/css" href="assets/gritter/css/jquery.gritter.css" />
                <link rel="stylesheet" type="text/css" href="assets/uniform/css/uniform.default.css" />
                <link rel="stylesheet" type="text/css" href="assets/jquery-tags-input/jquery.tagsinput.css" />    
                <link rel="stylesheet" type="text/css" href="assets/clockface/css/clockface.css" />
                <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
                <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
                <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
                <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
                <link rel="stylesheet" href="assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
                <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
                <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker.css" />  </head>
        <!-- END HEAD -->
        <!-- BEGIN BODY -->
        <?php if ($cekSession == 1) { ?>
        <body id="login_page">
        <?php } else { ?>
        <body class="fixed-top">

        <?php } ?>

        <?php
		//echo $cekSession;
        if ($cekSession == 1) {

            include "component/login/login1.php";
        } else {
            include "component/content/index.php";
            include "component/content/index1.php";
        }
        ?>
        <input type="hidden" value="<?= $_SESSION['backend']; ?>" id="backendss" />

        <!--    <div id="footer">
                2014 - 2015 &copy; Second Generation inc.
                <div class="span pull-right">
                    <input type="text" value="" id="backendss" />
                    <span class="go-top"><i class="icon-arrow-up"></i></span>
                </div>
            </div> -->
        <!-- END FOOTER -->
        <!-- BEGIN JAVASCRIPTS -->
        <!-- Load javascripts at bottom, this will reduce page load time -->
 <!--       <script src="js/jquery-1.8.3.min.js"></script>
        <script src="assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js"></script>	
        <script src="assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>				
        <script src="assets/bootstrap/js/bootstrap.min_1.js"></script>
        <script src="js/jquery.blockui.js"></script>
        <script src="js/json2.js"></script>
        <!-- ie8 fixes -->
        <!--[if lt IE 9]>
        <script src="js/excanvas.js"></script>
        <script src="js/respond.js"></script>
        <![endif]-->
<!--        <script type="text/javascript" src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>   
        <script type="text/javascript" src="assets/bootstrap-daterangepicker/date.js"></script>
        <script type="text/javascript" src="assets/bootstrap-editable/js/bootstrap-editable.min.js"></script>
        <script type="text/javascript" src="assets/bootstrap-daterangepicker/daterangepicker.js"></script> 
        <script type="text/javascript" src="assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>  
        <script type="text/javascript" src="assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="assets/uniform/jquery.uniform.min.js"></script>
        <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
        <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
        <script src="assets/fancybox/source/jquery.fancybox.pack.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/jquery.formatCurrency.js"></script>

        <script type="text/javascript" src="js/js.js"></script> -->

<!--        <script src="js/jquery.js" type="text/javascript"></script> -->
        <script src="js/json2.js"></script>
        
        
        <!--[if !IE]> -->
        <!--[if !IE]> -->
        <script src="js/jquery-1.8.3.min.js"></script>
                        <!--<script src="http://datatables.net/release-datatables/extensions/TableTools/js/dataTables.tableTools.js"></script>-->

        <script src="js/plugins/enquire.min.js" type="text/javascript"></script> 
        <script type="text/javascript" src="assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
        <!-- <![endif]-->
        <!-- <![endif]-->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!--[if lt IE 7]>
        <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE7.js"></script>
        <![endif]-->
        <script language="javascript" type="text/javascript" src="js/plugins/jquery.sparkline.min.js"></script> 
        <script src="js/plugins/excanvas.compiled.js"></script>
        <script src="js/bootstrap-transition.js" type="text/javascript"></script> 
        <script src="js/bootstrap-alert.js" type="text/javascript"></script> 
        <script src="js/bootstrap-modal.js" type="text/javascript"></script> 
        <script src="js/bootstrap-dropdown.js" type="text/javascript"></script> 
        <script src="js/bootstrap-scrollspy.js" type="text/javascript"></script> 
        <script src="js/bootstrap-tab.js" type="text/javascript"></script> 
        <script src="js/bootstrap-popover.js" type="text/javascript"></script> 
        <script src="js/bootstrap-button.js" type="text/javascript"></script> 
        <script src="js/bootstrap-collapse.js" type="text/javascript"></script> 
        <script src="js/bootstrap-carousel.js" type="text/javascript"></script> 
        <script src="js/bootstrap-typeahead.js" type="text/javascript"></script> 
        <script src="js/bootstrap-affix.js" type="text/javascript"></script> 
        <script src="js/fileinput.jquery.js" type="text/javascript"></script> 
        <script src="js/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script> 
        <script src="js/jquery.touchdown.js" type="text/javascript"></script> 
        <script language="javascript" type="text/javascript" src="js/plugins/bootstrap-datepicker.js"></script> 
        <script language="javascript" type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script> 
        <script language="javascript" type="text/javascript" src="js/plugins/jquery.tinyscrollbar.min.js"></script> 
        <script language="javascript" type="text/javascript" src="js/jnavigate.jquery.min.js"></script> 
        <script language="javascript" type="text/javascript" src="js/jquery.touchSwipe.min.js"></script> 
        <script language="javascript" type="text/javascript" src="js/plugins/jquery.peity.min.js"></script> 

        <!-- Flot charts --> 
        <script language="javascript" type="text/javascript" src="js/plugins/flot/jquery.flot.js"></script> 
        <script language="javascript" type="text/javascript" src="js/plugins/flot/jquery.flot.resize.js"></script> 

        <!-- Data tables --> 
        <script type="text/javascript" language="javascript" src="js/plugins/datatables/js/jquery.dataTables.js"></script> 

        <!-- Task plugin --> 
        <script language="javascript" type="text/javascript" src="js/plugins/knockout-2.0.0.js"></script> 

        <!-- Custom made scripts for this template --> 
        <script src="js/scripts.js" type="text/javascript"></script> 
        <script type="text/javascript" src="js/js.js"></script>
		<script type="text/javascript" src="js/controller.js"></script>
        <script type="text/javascript" language="javascript" src="js/plugins/datatables/js/jquery.dataTables.js"></script> 
        <script>
            $(function () {
              //   $('[rel="tooltip"]').tooltip();
                
             //   $('#namePage').html('HOME');
            
     //   $('[rel="tooltip"]').tooltip();
//alert($('[rel="tooltip"]').tooltip());
    });
    
        </script>
        <!-- END JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>