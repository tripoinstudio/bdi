<?php


function inputDatePicker($placeholder, $title, $idinput, $keterangan, $action, $style) {
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
             <input type="text" style="' . $style . '" value="02-16-2012"  id="' . $idinput . '" name="'.$keterangan.'titles[]" placeholder="' . $placeholder . '" class="span12" />
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

