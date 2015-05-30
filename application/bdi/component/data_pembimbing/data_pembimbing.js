$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   $('#create').hide();
   $('#pageFind').hide();
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
	var timeSave;
	var timer = 4000;
	//timeSave = setInterval(function () {saveDataPembimbing('data_pembimbing', 'save',1)}, timer);
	//setTimeout(function () {clearInterval(timeSave);}, 4000);
	if(actions == 'new'){
//	timeSave = setInterval(function () {saveDataPembimbing('data_pembimbing', 'save',1)}, timer);
//	clearInterval(timeSave);	
	}
	//stopTiming(timeSave,actions);

	
	//alert(actions);
	//setTimeout(function(){saveDataPembimbing('data_pembimbing', 'save',1)},4000);
	 if(actions == 'edit'){
		//timeSave = setInterval(function () {saveDataPembimbing('data_pembimbing', 'update',1)}, timer);
	} 
	if(actions == 'new'){
			
		$('#tanggal').val(formatDate(new Date));
		
	}  if(actions != 'new'){
//alert('tes');		
//
	//		clearInterval(timeSave);
	}
	
	//$('#create').hide();
	
   $('#tanggal').datepicker({
    //    format: 'yyyy-mm-dd'
	    format: 'dd-mm-yyyy'
                //   startDate: '-3d'
    });
	 $('#startDate').datepicker({
    //    format: 'yyyy-mm-dd'
	    format: 'dd-mm-yyyy'
                //   startDate: '-3d'
    });
	 $('#endDate').datepicker({
    //    format: 'yyyy-mm-dd'
	    format: 'dd-mm-yyyy'
                //   startDate: '-3d'
    });

});

function stopTiming(timeSave,actions){
	//alert(timeSave);
	//alert(actions);
	if(actions != 'new'){
		
	}
	
}

function saveDataPembimbing(str, action,type) {
    var itemUmatId = $('#itemUmatId').val();
	var pembimbing = $('#lovspembimbing').val();
	var birth_dates = $('#tanggal').val();
	
	if(pembimbing == ''){
		pembimbing = '0';
	} else if(itemUmatId == ''){
		itemUmatId = '0';
	} else if(birth_dates == ''){
		itemUmatId = '0';
	} 
	
	var tanggal = birth_dates.split("-").reverse().join("-");
	
	
	var judul = $('#judul').val();
	var pertanyaan = $('#pertanyaan').val();
	var jawaban = $('#jawaban').val();
	
	
    var required = validationRequired();
    var sending = beforeSave(action);
	var sendingitem = '&judul='+judul+'&pertanyaan='+pertanyaan+'&jawaban='+jawaban+'&itemUmatId='+itemUmatId+'&pembimbing='+pembimbing+'&tanggal='+tanggal;
	var id = $('#idUp').val();
	if(itemUmatId == null || itemUmatId == 0) {
		alert('Mohon Pilih Data Umat');
	} else {
    if (required == "nulls") {

    } else {
     //   prosesSave(str, action, sending,'&itemUmatId='+itemUmatId+'&pembimbing='+pembimbing+'&tanggal='+tanggal);
		prosesLoading();
	  
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
         //  sampleTable();
            $('#deleteAll').hide();
            $('#edit').hide();
			$('#create').hide();
            $('#back').hide();
			$('#cancel').hide();
			var idUpdate = $('#idUpdate').val();
			 
		//	 alert(id);
			if(action == 'save'){
				
				if(idUpdate != null && type == 1){
				viewEdit('data_pembimbing', idUpdate, 'edit');
				}
			} else if(action == 'update'){
			//	alert(id);
				if(id != null && type == 1){
				viewEdit('data_pembimbing', id, 'edit');
			}
			}
getJavascript(str);			
        }
    }
	
    if (action == 'save') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=save"+sendingitem, true);
    } else if (action == 'update') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=update&id="+id +sendingitem, true);
    }

    xmlhttp.send();
    }
	}

}
/*

function findumatPop(){
	var name = $('#name').val();
	var code_daerah = $('#code_daerah').val();
	var code_name2 = $('#code_name').val();
	var code_nik = $('#code_nik').val();
	if(code_name2 == 0){
		var code_name = '';
	} else {
		var code_name = colName(parseInt(code_name2)-1);
	}
	
	var str = 'data_pembimbing';
	$('#myModal').modal('show');
	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=list&name='+name+'&code_daerah='+code_daerah+'&code_name='+code_name+'&code_nik='+code_nik,
		        success: function (result) {
			//		alert(result);
		//	$('#proses_loading_item').html('');
			var jsons = JSON.parse(result);
			
			var frma = '';
		
			for (var n = 0; n < jsons.length; n++) {
				var items = jsons[n];
				i = n + 1;
				var province = items.tb_province_code;
				var nama = items.tb_data_umat_nama_ktp;
				var namas = "'"+items.tb_data_umat_nama_ktp+"'";
				var code = items.tb_data_umat_code;
				//var nama = 
				frma = frma + '<tr id="tritem'+i+'" onclick="pilihDataUmat('+items.tb_data_umat_id+','+namas+');">';
				frma = frma + '<td>'+autoCodeNumber(province,nama,code) + '</td>';
				frma = frma + '<td>'+items.tb_data_umat_nama_ktp+ '</td>';
				frma = frma + '</tr>';
				
				
			}
			$('#frmItem').html(frma);
		//	sampleTable();
			return false;
		}
	}
	);
	
} */

function findumatPop(){
	var name = $('#name').val();
	var code_daerah = $('#code_daerah').val();
	var code_name2 = $('#code_name').val();
	var code_nik = $('#code_nik').val();
	if(code_name2 == 0){
		var code_name = '';
	} else {
		var code_name = colName(parseInt(code_name2)-1);
	}
	
	var str = 'data_pembimbing';
	$('#myModal').modal('show');
	$.ajax( {
		type: 'get',
		        url: 'controller.php',
			/*  url: ' http://192.168.1.133:8080/materialapi/materials',
			  dataType: 'json',
			  contentType: 'application/json; charse=utf-8',
		*/
		        data: 'content=' + str + '&action=list&name='+name+'&code_daerah='+code_daerah+'&code_name='+code_name+'&code_nik='+code_nik,
		        success: function (result) {
				//	alert(result);
		//	$('#proses_loading_item').html('');
			var jsons = JSON.parse(result);
		//	var jsons = JSON.parse(result);
//alert(jsons);
			var frma = '';
		
			for (var n = 0; n < jsons.length; n++) {
				var items = jsons[n];
				i = n + 1;
			var province = items.tb_province_code;
				var nama = items.tb_data_umat_nama_ktp;
				var namas = "'"+items.tb_data_umat_nama_ktp+"'";
				var nikcodes = "'"+autoCodeNumber(province,nama,code)+"'";

				var code = items.tb_data_umat_code;
				//var nama = 
				frma = frma + '<tr id="tritem'+i+'" onclick="pilihDataUmat('+items.tb_data_umat_id+','+namas+','+nikcodes+');">';
				frma = frma + '<td>'+autoCodeNumber(province,nama,code) + '</td>';
				frma = frma + '<td>'+items.tb_data_umat_nama_ktp+ '</td>';
				frma = frma + '</tr>';
				
		/*			
			 frma = frma + '<tr id="tritem'+i+'">';
				frma = frma + '<td>'+items.name+ '</td>';
				frma = frma + '<td>'+items.pcs+ '</td>';
				frma = frma + '</tr>'
				$('#frmItem').html(frma);*/
			}
			$('#frmItem').html(frma);
		//	sampleTable();
			return false;
		}
	}
	); 
	/*
	if (str == "") {
        document.getElementById("isiBodyUmat").innerHTML = "";
        return;
    }
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else { // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
	 xmlhttp.withCredentials = true;
	 
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("isiBodyUmat").innerHTML = xmlhttp.responseText;
            //  sampleTable();

                var frma = '';
           frma = frma + '<tr id="tritem'+i+'">';
				frma = frma + '<td>'+items.name+ + '</td>';
				frma = frma + '<td>'+items.pcs+ '</td>';
				frma = frma + '</tr>'
				$('#frmItem').html(frma);
          //  getJavascript(str); 

        }
    }
	
 //   xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id, true);
 
 xmlhttp.open("GET", "http://192.168.1.133:8080/materialapi/materials", true);
 //xmlhttpcreateCORSRequest("GET", "http://192.168.1.133:8080/materialapi/materials");
 /*xmlhttp.setRequestHeader('Access-Control-Allow-Headers', '*');
    xmlhttp.setRequestHeader('Content-type', 'application/json');
    xmlhttp.setRequestHeader('Access-Control-Allow-Origin', '*');
	
    xmlhttp.send();

    return true;
*/
	
	
}

function createCORSRequest(method, url){
    var xhr = new XMLHttpRequest();
    if ("withCredentials" in xhr){
        xhr.open(method, url, true);
    } else if (typeof XDomainRequest != "undefined"){
        xhr = new XDomainRequest();
        xhr.open(method, url);
    } else {
        xhr = null;
    }
    return xhr;
}

function pilihDataUmat(id,name,nikcodes){
	//alert(nikcodes);
	$('#myModal').modal('hide');
	$('#itemUmatId').val(id);
	$('#itemUmatName').html(nikcodes+' / '+name);
}
function resetClear(){
	$('#itemUmatId').val('');
	$('#itemUmatName').html('');
	$('#name').val('');
	$('#code_daerah').val('');
	$('#code_name').val('');
	$('#code_nik').val('');
}


function findDataBimbingan(){
	var name = $('#nama').val();
	var startDates = $('#startDate').val();
	var endDates = $('#endDate').val();
	var startDate = startDates.split("-").reverse().join("-");
	var endDate = endDates.split("-").reverse().join("-");
	var lovspembimbing = $('#lovspembimbing').val();
	
	var str = 'data_pembimbing';
//	$('#myModal').modal('show');
$('#loadingser').html('<div style="vertical-align: middle;padding-left: 500px;"><img src="img/ajax-loader.gif"><br/><br/><p style="padding-right:50px;"></p></div>');

	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=search&name='+name+'&startDate='+startDate+'&endDate='+endDate+'&pembimbing='+lovspembimbing,
		        success: function (result) {
			//		alert(result);
					
		//	$('#proses_loading_item').html('');
		//	var jsons = JSON.parse(result);
		//alert(parseInt(result).toString());
		//$('#loadingser').html(result.toString()+'1');
	if(result == '' || result == null || result == 0){
				//alert('masuk');
				$('#loadingser').html('<div style="vertical-align: middle;padding-left: 400px;font-weight:bold;">DATA TIDAK DI TEMUKAN</div></br>');
				$('#pageFind').hide();
			$('#pageFind').html('');
			} else {
				$('#loadingser').html('');
				$('#pageFind').show();
			$('#pageFind').html(result);
			}
			sampleTable();
			return false;
		}
	}
	);
	
}

function viewListDataUmat(str, id, action) {
    //  $('.btn').tooltip('disable');
//alert(str);
//var id = $('#id').val();
//alert(id);
//alert(action);
//
//prosesLoading();
//$("#loading").show();
$('#myModals').modal('show');
var exports = 'html';

var file = 'pdf-detail-data-umat';
$('#loadingpop').html('<div style="vertical-align: middle;padding-left: 300px;"><img src="img/ajax-loader.gif"><br/><br/><p style="padding-right:50px;"></p></div>');
    if (str == "") {
        document.getElementById("isiBodyUmat").innerHTML = "";
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
            document.getElementById("isiBodyUmat").innerHTML = xmlhttp.responseText;
            //  sampleTable();

                $('#loadingpop').html('');
           
          //  getJavascript(str); 

        }
    }
	
 //   xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id, true);
 xmlhttp.open("GET", "export.php?export=" + exports + "&file=" + file+"&id="+id, true);
    xmlhttp.send();

    return true;

}

function exportPdfDetailPembimbing(type, filename, parameter) {
    var exports = type;
    var file = filename;
	
    var newURL = 'export.php?export=' + exports + '&file=' + file+parameter ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}