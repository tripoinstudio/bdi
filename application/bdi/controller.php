<?php

require_once("class/mysql_crud.php");

include("configuration.php");
require_once("function/function.php");
require_once("function/component.php");


    include 'controller/' . $_GET['content'] . '/' . $_GET['content'] . '.php';
