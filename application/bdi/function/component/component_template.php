<?php

function inputGeneralTemplate($title, $placeholder) {

    echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . '</label>
             <div class="controls span9">';
    echo $placeholder;
   
         
      echo'</div>';
  //   echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>
         echo'    </div>';
}

function abjadToNumber($dest) {
    if ($dest)
        return ord(strtolower($dest)) - 96;
    else
        return 0;
}


function checkDataKelu($data) {
    if ($data == 0)
		return '';
    else
        return $data;
}

function autoCodeUmat($daerah, $nama, $id) {
    $subname = strtoupper(substr($nama, 0, 1));
    $subcenter = '';

    $number = abjadToNumber($subname);
    if($number <=9){
        $subcenter = '0'.$number;
    } else {
        $subcenter = $number;
    }
    $hasil = $daerah . '.' . $subcenter . '.' . $id;
    return $hasil;
}

function saveCodeUmats($cekcodes) {
  //  echo $cekcodes;
        $lengthcodeumat = strlen($cekcodes);
        $strtointcode =  intval($cekcodes);
        $perhitungan = $strtointcode + 1;
        $codenya = '';
        if($lengthcodeumat == 5){
            $codenya = '0000'.$perhitungan;
        } else if($lengthcodeumat == 4){
            $codenya = '000'.$perhitungan;
        } else if($lengthcodeumat == 3){
            $codenya = '00'.$perhitungan;
        } else if($lengthcodeumat == 2){
            $codenya = '0'.$perhitungan;
        } else if($lengthcodeumat == 1){
            $codenya = $perhitungan;
        } else {
            $codenya = '00001';
        }
        return $codenya;
}

function saveAutoCode() {
    $manual = "select * from tb_personal_identity order by tb_personal_identity_code";
    $lovquery = mysql_query($manual);
    while ($listlov = mysql_fetch_array($lovquery)) {
        $code = $listlov['tb_personal_identity_code'];
        $address = idListViewTarget($listlov['tb_personal_identity_ktp_address'], "address", "tb_province_id");
        $provincecode = idListViewTarget($address, "province", "tb_province_code");
        $daerahcode = $listlov['tb_'];
    }
    $hasil = $code;

    return $hasil;
}

function optionHubungan($id){
	//$selected;
	switch ($id) {
    case 'AYAH':
        $selected1 = 'selected="selected"';
        break;
	case 'IBU':
        $selected2 = 'selected="selected"';
        break;
	case 'ANAK':
        $selected3 = 'selected="selected"';
        break;
	case 'KAKAK':
        $selected4 = 'selected="selected"';
        break;
	case 'ADIK':
        $selected5 = 'selected="selected"';
        break;
	case 'KAKEK':
        $selected6 = 'selected="selected"';
        break;
	case 'NENEK':
        $selected7 = 'selected="selected"';
        break;
	case 'CUCU':
        $selected8 = 'selected="selected"';
        break;
	case 'MERTUA':
        $selected9 = 'selected="selected"';
        break;
	case 'MENANTU':
        $selected10 = 'selected="selected"';
        break;
	case 'PAMAN':
        $selected11 = 'selected="selected"';
        break;
	case 'TANTE':
        $selected12 = 'selected="selected"';
        break;
	case 'KEPONAKAN':
        $selected13 = 'selected="selected"';
        break;
	case 'SEPUPU':
        $selected14 = 'selected="selected"';
        break;
	case 'LAIN-LAIN':
        $selected15 = 'selected="selected"';
        break;
	case '0':
        $selected16 = 'selected="selected"';
        break;
	
    default:
       // code to be executed if n is different from all labels;
} 

	echo '<option value="0" '.$selected16.'>Select ...</option><option value="AYAH" '.$selected1.'>AYAH</option>
	<option value="IBU" '.$selected2.'>IBU</option>
	<option value="ANAK" '.$selected3.'>ANAK</option>
	<option value="KAKAK" '.$selected4.'>KAKAK</option>
	<option value="ADIK" '.$selected5.'>ADIK</option>
	<option value="KAKEK" '.$selected6.'>KAKEK</option>
	<option value="NENEK" '.$selected7.'>NENEK</option>
	<option value="CUCU" '.$selected8.'>CUCU</option>
	<option value="MERTUA" '.$selected9.'>MERTUA</option>
	<option value="MENANTU" '.$selected10.'>MENANTU</option>
	<option value="PAMAN" '.$selected11.'>PAMAN</option>
	<option value="TANTE" '.$selected12.'>TANTE</option>
	<option value="KEPONAKAN" '.$selected13.'>KEPONAKAN</option>
	<option value="SEPUPU" '.$selected14.'>SEPUPU</option>
	<option value="LAIN-LAIN" '.$selected15.'>LAIN-LAIN</option>';
	
}

