<?php

function inputLovNew($placeholderid=null, $placeholdername=null,$placeholder=null, $title=null, $idinput=null, $keterangan=null, $action=null, $manual=null, $style=null,$parameter=null,$onclick=null) {
        
   echo '<div class="form-row control-group row-fluid">
    <label class="control-label span3"><?=DTNG_KE;?></label>
    <div class="controls span9">
        <label class="radio ">
            <input type="radio" id="gender"  value="1" name="radio1" />
            <span style="padding-left: 10px;">Ya </span>
        </label>
        <label class="radio ">
            <input type="radio" id="gender" value="2" name="radio1" checked="CHECKED"/>
            <span style="padding-left: 10px;">Tidak </span>
        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>';
}