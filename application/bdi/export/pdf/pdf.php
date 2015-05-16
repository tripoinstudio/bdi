<?php
require_once('class/mysql_crud.php');
require_once('class/pdf/html2pdf.class.php');
ob_start();
$namePage= 'MNSBDI';

 include(dirname('__FILE__').'/export/pdf/'.$_GET['file'].'.php');
$content = ob_get_clean();

 try
    {
        $html2pdf = new HTML2PDF($_GET['pages'], 'A4', 'fr');
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        $html2pdf->Output($_GET['file']."-".date('Ymd').'.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
    
 
