<?php

require_once("class/mysql_crud.php");

include("configuration.php");
require_once("function/function.php");
require_once("function/component.php");


if ($_GET['action'] == 'lovname') {
    include 'function/action/lov.php';
} else if ($_GET['action'] == 'search') {

    include 'component/' . $_GET['content'] . '/' . $_GET['content'] . '.php';
}