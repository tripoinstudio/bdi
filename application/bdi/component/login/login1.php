<?php
session_start();
require_once("configuration.php");


$username = $_POST['username'];
$pass = $_POST['password'];
$company = $_POST['company'];

//$whereset = $_SESSION['company_code'];
$dbgrou = new Database();
$dbgrou->connect();
$dbgrou->select("tb_settings", "*", NULL, "tb_settings_code='" . $company . "'"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
$list_settings = $dbgrou->getResult();
foreach ($list_settings as $list_settings2) {
    $idsettings = $list_settings2['tb_settings_id'];
    $typebackend = $list_settings2['type_backend'];
    // $parentsta = "company_code=" . $idsettings . " AND status=1";
}

//$cekuser1 = mysql_query("SELECT * FROM tb_user WHERE user_username = '$username' and company_code = '$company'");
//$hasil2 = mysql_fetch_array($cekuser1);

$cekuser = mysql_query("SELECT * FROM tb_user WHERE user_username = '$username' and company_code = '$idsettings'");
$jumlah = mysql_num_rows($cekuser);
$message = '';
$hasil = mysql_fetch_array($cekuser);
if ($jumlah == 0) {
    if ($username == '' && $username == null) {
        
    } else {
        $messageerror = 'Username Belum Terdaftar!';
    }
    //   echo "Username Belum Terdaftar!";
    //   echo "<a href='.'>Back</a>";
} else {
    if ($pass != $hasil['user_password']) {
        $messageerror = 'Password Salah!';

        //   header('location:.');
    } else if ($username != $hasil['user_username']) {
        $messageerror = 'Username Salah!';

        //   header('location:.');
    } else {
        $_SESSION['username'] = $hasil['user_username'];
        $_SESSION['company_code'] = $company;
        $_SESSION['id_group'] = $hasil['tb_group_id'];
        $_SESSION['backend'] = $typebackend;
        header('location:.');
    }
}

$message = '<label for="cname2" generated="true" class="error" style="display: block;font-color:red;">' . $messageerror . '</label>';
?>




<div id="login">
    <div class="row-fluid fluid">
        <div class="span5"> <img src="img/logo-mnsbdi198.png" style="background: none;"/> </div>
        <div class="span7">
            <div class="title">
                <span class="name">MNSBDI</span>
                <span class="subtitle">Database Umat BDI</span>
            </div>
            <form class="form-search row-fluid " onsubmit="return cekLogin();" action="." method="post">
                <?= $message; ?>
                <div class="input-append row-fluid fluid">            
                    <input type="text" class="row-fluid search-query" id="input-username" name="username" placeholder="Username" />            

                    <span class="add-on"><i class="icon-user"></i></span>
                    <span id="username-label">
                    </span>
                </div>
                <input type="hidden" class="row-fluid search-query" id="input-company" name="company" value="0000000000000001" />   
                <div class="input-append row-fluid fluid">            
                    <input type="password" class="row-fluid search-query" id="input-password" name="password" placeholder="Password" />
                    <span class="add-on"><i class="icon-lock"></i></span>
                    <span id="password-label">
                    </span>

                    <!--                    <a href="component/login/login1.php"  class="btn color_4"></a>-->
                </div>
                <div class="input-append row-fluid fluid"> 

                    <input type="submit" id="submitlog" class="btn color_4 disabled" value="Go" />
                </div>
            </form>
        </div>
    </div>
</div>

    <script language="javascript" type="text/javascript" src="component/login/login.js"></script> 
