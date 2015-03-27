<?php

$db = new Database();

$query=mysql_connect($db->db_host,$db->db_user,$db->db_pass);
mysql_select_db($db->db_name,$query);
?>