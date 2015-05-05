<?php
	function logout(){
//	session_start();
		unset($_SESSION['username']);
	//	header('location:index.php');
	}
?>