<?php

function logout() {
    session_start();
    unset($_SESSION['username']);
    header('location:index.php');
}

function bacaRest($url) {
    $ip = $url;
    // setting CURL
    $data = curl_init();
    curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($data, CURLOPT_URL, $ip);

    // menjalankan CURL untuk membaca isi file
    $hasil = curl_exec($data);
    curl_close($data);

    return $hasil;
}

function bacaHTML($url) {
    /* 	require_once 'configuration.php';
      $cekIPS	= $db->Execute("SELECT * FROM ipConfig");
      // inisialisasi CURL

      $ip		= $cekIPS->fields['ipAddr'].''.$url;
     */
    $ip = $url;
    $data = curl_init();
    // setting CURL
    curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($data, CURLOPT_URL, $ip);

    // menjalankan CURL untuk membaca isi file
    $hasil = curl_exec($data);
    curl_close($data);
    return $hasil;
}

function getJAVA($url) {
    /*  require_once 'configuration.php';
      $getQuery = "SELECT * FROM ipConfig";
      $getResult = @mysql_query($getQuery);
      $getRow = @mysql_fetch_array($getResult); */
    // inisialisasi CURL
    $ip = $url;
    $data = curl_init();
//    $ip = $getRow['ipAddr'] . '' . $url;
//	echo $ip;
    // setting CURL
    curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($data, CURLOPT_URL, $ip);

    // menjalankan CURL untuk membaca isi file
    $hasil = curl_exec($data);
    curl_close($data);
    return json_decode($hasil);
}

function getDATA($url) {
    /*   require_once 'configuration.php';
      $getQuery = "SELECT * FROM ipConfig";
      $getResult = @mysql_query($getQuery);
      $getRow = @mysql_fetch_array($getResult); */
    // inisialisasi CURL
    $data = curl_init();
    $ip = $url;
    //   $ip = $getRow['ipAddr'] . '' . $url;
    // setting CURL
    curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($data, CURLOPT_URL, $ip);

    // menjalankan CURL untuk membaca isi file
    $hasil = curl_exec($data);
    curl_close($data);
    return $hasil;
}

function statusNew() {
    $result = "'status'=>'1'";
    return $result;
}

function amountToStr($amount) {
    return ($amount == "-") ? $amount : number_format($amount, 0, ".", ",");
}

function strToAmount($amount) {
    $uang = explode(',', $amount);
    for ($i = 0; $i < count($uang); $i++) {
        $money .= $uang[$i];
    }
    return $money;
}

function dateToString($date) {
    $dates = date_create($date);
    return date_format($dates, "d-m-Y");
}

function StringToDate($date) {
    $dates = date_create($date);
    return date_format($dates, "Y-m-d");
}

function subMonth($tgl) {
//    $date = substr($tgl, 0, 2);
//    $month = getMonth(substr($tgl, 3, 2));
//    $year = substr($tgl, 6, 4);
     $date = substr($tgl, 8, 9);
    $month = getMonth(substr($tgl, 5, 6));
    $year = substr($tgl, 0, 4);
    return $date . ' ' . $month . ' ' . $year;
}

function selectMonth($month) {
    $bln = getMonth($month);
    return $bln;
}

function strLength($length) {
    $lebar = strlen($length);
    switch ($lebar) {
        case 1:
            $g = "0" . $length;
            break;
        case 2:
            $g = $length;
            break;
    }
    return $g;
}

function getMonth($bln) {
    switch ($bln) {
        case 1:
            return "Januari";
            break;
        case 2:
            return "Februari";
            break;
        case 3:
            return "Maret";
            break;
        case 4:
            return "April";
            break;
        case 5:
            return "Mei";
            break;
        case 6:
            return "Juni";
            break;
        case 7:
            return "Juli";
            break;
        case 8:
            return "Agustus";
            break;
        case 9:
            return "September";
            break;
        case 10:
            return "Oktober";
            break;
        case 11:
            return "November";
            break;
        case 12:
            return "Desember";
            break;
    }
}

function autoSOCode() {

    /*  $dbmax = new Database();
      $dbmax->connect();


      $dbmax->sql("SELECT max(tb_salesorder_id) FROM tb_salesorder"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
      $res = $dbmax->getResult();
      echo $res[0];
     */
    $high = mysql_result(mysql_query("SELECT max(tb_salesorder_code) FROM tb_salesorder"), 0);
    $subPertama = substr($high, 0, 3);
    $subPertamaTambah = $subPertama + 1;
    $subPertamaLength = strlen($subPertamaTambah);
    //  echo $subPertamaLength;
    if ($high != null) {
        if ($subPertamaLength == 1) {
            echo "00" . $subPertamaTambah . "/SLS/SG/2015";
        } else if ($subPertamaLength == 2) {
            echo "0" . $subPertamaTambah . "/SLS/SG/2015";
        } else {
            echo $subPertamaTambah . "/SLS/SG/2015";
        }
    } else {
        echo '001/SLS/SG/2015';
    }
}

function autoINVCode() {

    /*  $dbmax = new Database();
      $dbmax->connect();


      $dbmax->sql("SELECT max(tb_salesorder_id) FROM tb_salesorder"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
      $res = $dbmax->getResult();
      echo $res[0];
     */
    $high = mysql_result(mysql_query("SELECT max(tb_invoice_code) FROM tb_invoice"), 0);
    $subPertama = substr($high, 0, 3);
    $subPertamaTambah = $subPertama + 1;
    $subPertamaLength = strlen($subPertamaTambah);
    //  echo $subPertamaLength;
    if ($high != null) {
        if ($subPertamaLength == 1) {
            echo "00" . $subPertamaTambah . "/INV/SG/2015";
        } else if ($subPertamaLength == 2) {
            echo "0" . $subPertamaTambah . "/INV/SG/2015";
        } else {
            echo $subPertamaTambah . "/INV/SG/2015";
        }
    } else {
        echo '001/INV/SG/2015';
    }
}

function autoPOCode() {

    /*  $dbmax = new Database();
      $dbmax->connect();


      $dbmax->sql("SELECT max(tb_salesorder_id) FROM tb_salesorder"); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
      $res = $dbmax->getResult();
      echo $res[0];
     */
    $high = mysql_result(mysql_query("SELECT max(tb_purchase_code) FROM tb_purchase"), 0);
    $subPertama = substr($high, 0, 3);
    $subPertamaTambah = $subPertama + 1;
    $subPertamaLength = strlen($subPertamaTambah);
    //  echo $subPertamaLength;
    if ($high != null) {
        if ($subPertamaLength == 1) {
            echo "00" . $subPertamaTambah . "/PO/SG/2015";
        } else if ($subPertamaLength == 2) {
            echo "0" . $subPertamaTambah . "/PO/SG/2015";
        } else {
            echo $subPertamaTambah . "/PO/SG/2015";
        }
    } else {
        echo '001/PO/SG/2015';
    }
}

function listName($value, $name, $id) {
    $listName = '<input type="hidden" value="' . $value . '" id="' . $name . $id . '" />';

    return $listName;
}

function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if (getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if (getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if (getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if (getenv('HTTP_FORWARDED'))
        $ipaddress = getenv('HTTP_FORWARDED');
    else if (getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

function saveToLog($content,$action,$user) {
	date_default_timezone_set("Asia/Jakarta");
    $description = $content.' = '.$action;
    $db = new Database();
    $db->connect();
    $db->insert('tb_log_activity', array('tb_log_activity_description' => $description,'tb_log_activity_created_by' => $user,'tb_log_activity_created_date' => date('Y-m-d h:m:s'),'tb_log_activity_created_ip' => get_client_ip()));
    $res = $db->getResult();
}
?>

