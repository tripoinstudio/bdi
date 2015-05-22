<?php
require_once ('function/component.php');


if($_GET['export'] == 'excel'){
    include './export/excel/excel.php';
} else if($_GET['export'] == 'pdf'){
    include './export/pdf/pdf.php';
}


