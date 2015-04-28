<?php


    if ($_GET['action'] == 'update') {
        $data = json_decode($_GET['data']);
    $datas = '';
    $countdata = count($data->item);

    $nodata = 0;
        foreach ($data->item as $items) {
        $nodata++;
        if ($nodata == $countdata) {
            $comadat = '';
        } else {

            $comadat = ',';
        }
        $datas .= "`tb_".$cekMenu['menu_function_link']."_".$items->code . "`='".$db->escapeString($items->values) . "'" . $comadat;
    }
    } else {
        $data = json_decode($_GET['data']);
    $value = json_decode($_GET['values']);
    $datas = '';
    $values = '';
    $countdata = count($data->item);
    $countvalue = count($value->valuesit);

    $nodata = 0;
    $novalues = 0;
    $lovs ='';
    foreach ($data->item as $items) {
        $nodata++;
        if ($nodata == $countdata) {
            $comadat = '';
        } else {

            $comadat = ',';
        }
     //   $lovs = substr($items->code, 0,3);
    //    $lovs = substr($items->code, 0,3);
       
                   $datas .= '`tb_'.$cekMenu['menu_function_link'].'_'.$items->code . '`' . $comadat;
 
 //       }
    
        
        
        
    }
    foreach ($value->valuesit as $items) {
        $novalues++;
        if ($novalues == $countdata) {
            $comaval = '';
        } else {

            $comaval = ',';
        }
        $values .= "'".$db->escapeString($items->values) . "'" . $comaval;
        // echo $value[0]->item;
    }
    }
    
    
//echo $datas;
    
    saveToLog($cekMenu['menu_function_name'], $_GET['action'], $_SESSION['username']);
