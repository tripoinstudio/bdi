$(function () {
    //   alert("ipconfig");
	
    var ipconfig = $('#ipConfig').val();
    $('#create').hide();
    $('#export-pdf').hide();
    $('#export-excel').hide();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
	$('#export-excel').hide();
	//nextLimit('log_activity', 'LOG ACVITY','0');

});
function saveProvince(str, action) {
    var country = $('#lovscountry').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending, '&country=' + country);
    }

}

function nextLimit(str, name,type) {
//alert(str);
//alert(name);
//$('#loading').html('<img src="img/ajax-loader.gif">');
if(type == 0){
	var ceklim = parseFloat('500');
	var limit = '0,500';
	
}else if (type == 1){
var ceklim = parseFloat($('#checklimit').val())-500;
var limit = $('#checklimit').val()+','+ceklim;
} else if (type == 2){
var ceklim = parseFloat($('#checklimit').val())+500;
var limit = $('#checklimit').val()+','+ceklim;
	
}

//alert(limit);
prosesLoading();
    $('#namePage').html(name);
    $('#datatable_example').html('');
	//$('#txtHint').html('proses...');
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    }
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else { // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("txtHint").innerHTML = xmlhttp.responseText;

         //   getJavascript(str);
            sampleTable();
			$('#checklimit').val(ceklim);
            $('#startdate').datepicker();
            $('#enddate').datepicker();
            $('#contentTable').html('');
            $('#deleteAll').hide();
            $('#edit').hide();
            $('#cancel').hide();
            $('#back').hide();


        }
    }
   
        xmlhttp.open("GET", "component/content/index2.php?content=" + str+"&listaction=search&limit="+limit, true);

    

    xmlhttp.send();

    return true;

}