<?php session_start();
require_once("configuration.php");
$username = $_POST['username'];
$pass = $_POST['password'];
$cekuser = mysql_query("SELECT * FROM tb_user WHERE user_username = '$username'");


$jumlah = mysql_num_rows($cekuser);
$hasil = mysql_fetch_array($cekuser);
if($jumlah == 0) {
echo "Username Belum Terdaftar!";
echo "<a href='.'>Back</a>";
} else {
if($pass != $hasil['user_password']) {
echo "Password Salah!
";
header('location:.');
} else {
$_SESSION['username'] = $hasil['user_username'];
$_SESSION['user_id'] = $hasil['user_id'];
header('location:.');
}
}
?>