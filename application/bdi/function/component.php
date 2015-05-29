<?php

require_once("component/lov.php");
require_once("component/component_template.php");

function inputDatePicker($placeholder=null, $title=null, $idinput=null, $keterangan=null, $action=null, $style=null) {
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
             <input type="text" style="' . $style . '" value="02-16-2012"  id="' . $idinput . '" name="' . $keterangan . 'titles[]" placeholder="' . $placeholder . '" class="span12" />
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
</div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">';
        if ($action == 'edit') {
            echo'<input type="text"  name="' . $keterangan . 'titles[]" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" />';
        } else if ($action == 'view') {
            echo'<input type="text"  name="' . $keterangan . 'titles[]" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" disabled/>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
            
             </div>
             </div>';
    }
}

function inputGeneralView($placeholder=null, $title=null, $idinput=null, $keterangan=null, $action=null, $style=null) {

    echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . '</label>
             <div class="controls span9">';
    echo $placeholder;
    echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
            
             </div>
             </div>';
}

function inputGeneral($placeholder=null, $title=null, $idinput=null, $keterangan=null, $action=null, $style=null,$onclick=null) {
    
    if ($action == 'new') {
        echo '<div class="form-row control-group row-fluid">';
    echo '<label class="control-label span3">' . $title . ' ';
         //    <span class="help-block">Type your ' . $idinput . ' here</span>
      echo' </label>';
      echo'          <div class="controls span9">
          <input type="text" '.$onclick.' style="' . $style . '"  id="' . $idinput . '" name="' . $keterangan . 'titles[]" placeholder="' . $placeholder . '" class="span12" />
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
</div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">';
       echo'      <label class="control-label span3">' . $title . '';
//                 <span class="help-block">Type your ' . $idinput . ' here</span>
echo'</label>';
                 
echo'            <div class="controls span9">';
        if ($action == 'edit') {

            echo'<input type="text"  name="' . $keterangan . 'titles[]" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" />';
        } else if ($action == 'view') {
            echo'<input type="text"  name="' . $keterangan . 'titles[]" id="' . $idinput . '"  style="' . $style . '"  value="' . $placeholder . '" class="span12" disabled/>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
            
             </div>
             </div>';
    }
}

function inputPassword($placeholder=null, $title=null, $idinput=null, $keterangan=null, $action=null, $style=null) {
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
            <input type="password" ' . $style . '  id="' . $idinput . '" name="' . $keterangan . 'titles[]" placeholder="' . $placeholder . '" class="span12" />
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
             </div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">';
        if ($action == 'edit') {
            echo'<input type="password" id="' . $idinput . '"  ' . $style . '  value="' . $placeholder . '" class="span12" />';
        } else if ($action == 'view') {
            echo'<input type="password" id="' . $idinput . '"  ' . $style . '  value="' . $placeholder . '" class="span12" disabled/>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns">
                 
             
</span>
             </div>
             </div>';
    }
}

function inputTextArea($placeholder=null, $title=null, $idinput=null, $keterangan=null, $action=null, $style=null) {
    if ($action == 'new') {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
             <textarea  style="' . $style . '" name="' . $keterangan . 'titles[]"  id="' . $idinput . '" placeholder="' . $placeholder . '" class="span12" ></textarea>
             <span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>
             </div>
             </div>';
    } else {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">';
        if ($action == 'edit') {
            echo'<textarea type="text" id="' . $idinput . '" name="' . $keterangan . 'titles[]"   style="' . $style . '"  class="span12" />' . $placeholder . '</textarea>';
        } else if ($action == 'view') {
            echo'<textarea type="text" id="' . $idinput . '" name="' . $keterangan . 'titles[]"  style="' . $style . '"  class="span12" disabled>' . $placeholder . '</textarea>';
        }
        echo'<span class="help-inline" name="namens[]" id="' . $idinput . 'ns"></span>
             </div>
             </div>';
    }
}

function inputLov($title=null, $idDiv=null, $idinput=null, $valueinput=null, $action=null, $idLov=null, $valueLovInput=null) {
    if ($action == 'new') {
        echo '<div class="form-row control-group row-fluid">
             <label class="control-label span3">' . $title . ' <span class="help-block">Type your ' . $idinput . ' here</span></label>
             <div class="controls span9">
                                        <div id="' . $idDiv . '">
                                            
</div>
                                            
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

function contentSearch($table=null, $title=null, $id=null) {
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
