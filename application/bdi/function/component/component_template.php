<?php

function inputGeneralTemplate($title, $placeholder) {

    echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . '</label>
             <div class="controls span9">';
    echo $placeholder;
    echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
</span>
         
          </div>
             </div>';
}

function autoCodeUmat($daerah, $nama, $id) {
    $subname = substr($nama, 0, 2);
    $hasil = $daerah . '.' . $subname . '.' . $id;
    return $hasil;
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
