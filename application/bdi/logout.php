<?php
	function logout(){
//	session_start();

echo "<script>setTimeout(\"location.href = '.';\",0);</script>";
		unset($_SESSION['username']);
		echo "<script>setTimeout(\"location.href = '.';\",0);</script>";
		//header('location:.');
	}
?>