<?php

function inputLovNew($placeholderid, $placeholdername,$placeholder, $title, $idinput, $keterangan, $action, $manual, $style,$parameter,$onclick) {
        
    if ($manual == 'true') {
            $manual = $parameter;
        } else {
            $manual = "select * from tb_" . $idinput;
        }

        $lovquery = mysql_query($manual);

        
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . '</label>
             <div class="controls span9">';

        echo "<select id='lovs" . $idinput . "' $onclick class='input-large m-wrap' $style> <option value='0'>Select ...</option>";

        while ($listlov = mysql_fetch_array($lovquery)) {
            echo "<option value=" . $listlov[$placeholderid] . ">" . $listlov[$placeholdername] . "</option>";
        }
        echo "</select>";
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>';

        echo '</div>
                                </div>';
}
function inputLovEdit($placeholderid, $placeholdername,$placeholder, $title, $idinput, $keterangan, $action, $manual, $style,$parameter,$onclick) {
        if ($manual == 'true') {
            $manual = $parameter;
        } else {
            $manual = "select * from tb_" . $idinput;
        }

        $lovquery = mysql_query($manual);


        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . '</label>
             <div class="controls span9">';

        echo "<select id='lovs" . $idinput . "'$onclick class='input-large m-wrap' $style> <option value='0'>Select ...</option>";

        while ($listlov = mysql_fetch_array($lovquery)) {
             if ($placeholder == $listlov[$placeholderid]) {
            echo "<option value='" . $listlov[$placeholderid] . "' selected='selected'>" . $listlov[$placeholdername] . "</option>";
    //    echo $listlov[$placeholderid];
            
             } else {
            echo "<option value=". $listlov[$placeholderid] . ">" . $listlov[$placeholdername] . "</option>";
        }
            
          //  echo "<option value=" . $listlov[$placeholderid] . ">" . $listlov[$placeholdername] . "</option>";
        }
        echo "</select>";
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>';

        echo '</div>
                                </div>';
}

function inputGeneralViewLov($placeholder, $title, $idinput, $keterangan, $action, $style) {
 $lovquery = mysql_query("select * from tb_" . $idinput . " where tb_" . $idinput . "_id=" . $placeholder);
    $lov = mysql_fetch_array($lovquery);
    echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . '</label>
             <div class="controls span9">';
    echo $lov['tb_' . $idinput . '_name'];
    echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
</span>
         
          </div>
             </div>';
}

function idListView($id, $name) {
    $lovquery = mysql_query("select * from tb_" . $name . " where tb_" . $name . "_id=" . $id);
    $lov = mysql_fetch_array($lovquery);
    $result = $lov['tb_' . $name . '_name'];
    return $result;
}

function idListViewManual($manual,$getdata) {
    $lovquery = mysql_query($manual);
    $lov = mysql_fetch_array($lovquery);
    $result = $lov[$getdata];
    return $result;
}