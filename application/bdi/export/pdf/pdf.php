<?php


 
$namePage= 'MNSBDI';
//echo dirname('__FILE__').'/export/pdf/pdf-con.php';
 //include(dirname('__FILE__').'/export/pdf/'.$_GET['file'].'.php');
//ob_start();
 include(dirname('__FILE__').'/export/pdf/pdf-con.php');
$content = ob_get_clean();
require_once('class/pdf/html2pdf.class.php');
 try
    {
        $html2pdf = new HTML2PDF('P', 'A4', 'fr');
		$html2pdf->pdf->SetDisplayMode('fullpage');
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
		 ob_end_clean();
      echo $html2pdf->Output($_GET['file']."-".date('Ymd').'.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
	
	//ob_end_flush();
 
 
