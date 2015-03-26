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
$hasil = mysql_fetch_array($cekuser);
if ($jumlah == 0) {
    //   echo "Username Belum Terdaftar!";
    //   echo "<a href='.'>Back</a>";
} else {
    if ($pass != $hasil['user_password']) {
        echo "Password Salah!
";
        header('location:.');
    } else {
        $_SESSION['username'] = $hasil['user_username'];
        $_SESSION['company_code'] = $company;
        $_SESSION['id_group'] = $hasil['tb_group_id'];
        $_SESSION['backend'] = $typebackend;
        header('location:.');
    }
}
?>


<?php if ($jumlah == 0) { ?>
    <div class="alert alert-error">
        <button data-dismiss="alert" class="close">×</button>
        <strong>Error!</strong> Username Belum Terdaftar
    </div>
    <?php
} else {

    if ($pass != $hasil['user_password']) {
        ?>
        <div class="alert alert-error">
            <button data-dismiss="alert" class="close">×</button>
            <strong>Error!</strong> Login Failed
        </div>
        <?php
    }
}
?>

<div id="login">
    <div class="row-fluid fluid">
        <div class="span5"> <img src="img/logo-mnsbdi198.png" /> </div>
        <div class="span7">
            <div class="title">
                <span class="name">MNSBDI</span>
                <span class="subtitle">Database Umat BDI</span>
            </div>
            <form class="form-search row-fluid " action="." method="post">

                <div class="input-append row-fluid fluid">            
                    <input type="text" class="row-fluid search-query" id="input-username" name="username" placeholder="Username" />            
                </div>
                <input type="hidden" class="row-fluid search-query" id="input-company" name="company" value="0000000000000001" />   
                <div class="input-append row-fluid fluid">            
                    <input type="password" class="row-fluid search-query" id="input-password" name="password" placeholder="Password" />



<!--                    <a href="component/login/login1.php"  class="btn color_4"></a>-->
               </div>
                <div class="input-append row-fluid fluid"> 
                    
                    <input type="submit" class="btn color_4" value="Go" />
                </div>
            </form>
        </div>
    </div>