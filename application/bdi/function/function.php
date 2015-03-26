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

function idListView($id, $name) {
    $lovquery = mysql_query("select * from tb_" . $name . " where tb_" . $name . "_id=" . $id);
    $lov = mysql_fetch_array($lovquery);
    $result = $lov['tb_' . $name . '_name'];
    return $result;
}

function statusNew() {
    $result = "'status'=>'1'";
    return $result;
}

function inputGeneral($placeholder, $title, $idinput, $keterangan, $action, $style) {
    if ($action == 'new') {
        /*     <div class="">
          <label class="control-label span3">Kode User<span class="help-block">Type your kode here</span> </label>
          <div class="controls span9">
          <input type="text" class="span12" required="" name="code" id="code">
          </div>
          </div> */
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
             <input type="text" style="' . $style . '"  id="' . $idinput . '" name="'.$keterangan.'titles[]" placeholder="' . $placeholder . '" class="span12" />
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
</div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">';
        if ($action == 'edit') {
            echo'<input type="text"  name="'.$keterangan.'titles[]" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" />';
        } else if ($action == 'view') {
            echo'<input type="text"  name="'.$keterangan.'titles[]" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" disabled/>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
            
             </div>
             </div>';
    }
}

function inputPassword($placeholder, $title, $idinput, $keterangan, $action, $style) {
    if ($action == 'new') {
        /*     <div class="">
          <label class="control-label span3">Kode User<span class="help-block">Type your kode here</span> </label>
          <div class="controls span9">
          <input type="text" class="span12" required="" name="code" id="code">
          </div>
          </div> */
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
            <input type="password" style="' . $style . '"  id="' . $idinput . '" name="'.$keterangan.'titles[]" placeholder="' . $placeholder . '" class="span12" />
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
             </div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">';
        if ($action == 'edit') {
            echo'<input type="password" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" />';
        } else if ($action == 'view') {
            echo'<input type="password" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" disabled/>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
             </div>
             </div>';
    }
}

function inputTextArea($placeholder, $title, $idinput, $keterangan, $action, $style) {
    if ($action == 'new') {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
             <textarea  style="' . $style . '" name="'.$keterangan.'titles[]"  id="' . $idinput . '" placeholder="' . $placeholder . '" class="span12" ></textarea>
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>
             </div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">';
        if ($action == 'edit') {
            echo'<textarea type="text" id="' . $idinput . '" name="'.$keterangan.'titles[]"   style="' . $style . '"  value="' . $placeholder . '" class="span12" />';
        } else if ($action == 'view') {
            echo'<textarea type="text" id="' . $idinput . '" name="'.$keterangan.'titles[]"  style="' . $style . '"  value="' . $placeholder . '" class="span12" disabled/>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>
             </div>
             </div>';
    }
}

function inputLov($title, $idDiv, $idinput, $valueinput, $action, $idLov, $valueLovInput) {
    if ($action == 'new') {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
                                        <div id="' . $idDiv . '"></div>
										<input type="hidden" value="' . $valueinput . '" id="' . $idinput . '" />
                                    </div>
                                </div>';
    } else {
        echo' <div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
                                        <div id="' . $idDiv . '"></div>
										<input type="hidden" value="' . $valueLovInput . '" id="' . $idLov . '" />
										<input type="hidden" value="' . $valueinput . '" id="' . $idinput . '" />
                                        
                                    </div>
                                </div>';
    }
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

function contentSearch($table, $title, $id) {
    $dblist = new Database();
    $dblist->connect();
    $dblist->select($table, '*', NULL, 'status=1'); // Table name, Column Names, JOIN, WHERE conditions, ORDER BY conditions
    $lovSearch = $dblist->getResult();
    echo'	<br/><br/>
<div class="control-group" style="padding-left:2px;">
<span class="control-label" style="vertical-align: top;font-size:14px;">' . $title . '</span>

<span style="padding-left:20px;" > 
<select class="input-medium m-wrap" name="' . $id . '" tabindex="1" id="' . $id . '">
<option value="0" />All';
    foreach ($lovSearch as $data) {
        echo'<option value="' . $data[$table . '_id'] . '" />' . $data[$table . '_name'] . '';
    }
    echo'</select></span></div>';
}

function contentSearchDate() {

    echo'	<br/><br/><div style="width:50%;"> 
        <table class="table table-striped table-bordered" style="width="100%;">
        <tr>

<td style="width:35%;">
<span class="control-label" style="vertical-align: top;font-size:14px;">Start Date</span>
</td>
<td style="width="5%;text-align:center;">:
</td>
<td style="width="65%">
<input type="text" value="' . date('m/d/Y') . '" size="16" class=" m-ctrl-medium date-picker" id="startdate">
</td>
</tr>
<tr>

<td>
<span class="control-label" style="vertical-align: top;font-size:14px;">End Date</span>
</td>
<td>:</td>
<td>
<input type="text" value="' . date('m/d/Y') . '" size="16" class=" m-ctrl-medium date-picker" id="enddate">
</td>
</tr>
</table>
</div>
';
}

function contentSearchDateType() {

    echo'	<br/><br/><div style="width:50%;"> 
        <table class="table table-striped table-bordered" style="width="100%;">
        <tr>

<td style="width:35%;">
<span class="control-label" style="vertical-align: top;font-size:14px;">Start Date</span>
</td>
<td style="width="5%;text-align:center;">:
</td>
<td style="width="65%">
<input type="text" value="' . date('m/d/Y') . '" size="16" class=" m-ctrl-medium date-picker" id="startdate">
</td>
</tr>
<tr>
<td>
<span class="control-label" style="vertical-align: top;font-size:14px;">End Date</span>
</td>
<td>:</td>
<td>
<input type="text" value="' . date('m/d/Y') . '" size="16" class=" m-ctrl-medium date-picker" id="enddate">
</td>
</tr>
<tr>
<td>
<span class="control-label" style="vertical-align: top;font-size:14px;">Type</span>
</td>
<td>:</td>
<td>
<select id="type" class="input">
                <option value="1">Sales Order</option>
                <option value="2">Purchase Order</option>

            </select>
</td>
</tr>
<tr>
<td>
<span class="control-label" style="vertical-align: top;font-size:14px;">Payment Type</span>
</td>
<td>:</td>
<td>
<select id="paymenttype" class="input">
<option value="0">All</option>
                <option value="1">Belum Bayar</option>
                <option value="2">Proses Bayar</option>
                <option value="3">Lunas</option>

            </select>
</td>
</tr>
</table>
</div>
';
}

function subMonth($tgl) {
    $date = substr($tgl, 0, 2);
    $month = getMonth(substr($tgl, 3, 2));
    $year = substr($tgl, 6, 4);
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
?>

