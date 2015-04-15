<?php
require_once("class/mysql_crud.php");

include("configuration.php");

if($_GET['action'] == 'lovname'){
    include 'function/action/lov.php';
}