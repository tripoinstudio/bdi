$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
  $('#create').hide();
  
	$('#buttonsaveitem').hide();
//	$('#createitem').hide();
if(str == 'cetak_umat_almt'){
	$('#table-search-umat').hide();
}
	
	

});


function findUmat() {
	//alert(id);
	$('#buttonsaveitem').show();
	$('#createitem').show();
	$('#table-item').show();
	var str = $("#filename").val();
	var alamat = $("#cari_alamat").val();
	//var tlp = $("#cari_tlp").val();
	var first_telp_rumah = $("#first_telp_rumah").val();
	var last_telp_rumah = $("#last_telp_rumah").val();
	var tlp = first_telp_rumah+'-'+last_telp_rumah;
	
//prosesLoading();
$('#tables-umat').html('<div style="vertical-align: middle;padding-left: 500px;"><img src="img/ajax-loader.gif"><br/><br/><p style="padding-right:50px;"></p></div>');
	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=findumat&notlp='+tlp+'&alamat='+alamat,
		        success: function (result) {
		//			alert(result);
		$('#tables-umat').html('');
		$('#table-search-umat').show();
	//	alert(result);
			var jsons = JSON.parse(result);
			
			var frma = '';
			
			for (var n = 0; n < jsons.length; n++) {
				var items = jsons[n];
				i = n + 1;
				frma = frma + '<tr id="tritem'+i+'"><td style="text-align:center;">';
				frma = frma + '<input type="checkbox" value="'+items.id+'" onchange="addCheck(this,'+i+')"/>';
				frma = frma + '</td>';
				frma = frma + '<td>'+items.code+'</td>';
				frma = frma + '<td>'+items.nama+'</td>';
				frma = frma + '<td>'+items.alt_ting+'</td>';
				frma = frma + '<td>'+items.no_telp+'</td>';
				frma = frma + '</tr>';
				
				
			}
			$('#frmItem').html(frma);
	
			return false;
		}
	}
	);
}

/*
function findUmat() {
	//alert(id);
	$('#buttonsaveitem').show();
	$('#createitem').show();
	$('#table-item').show();
	var str = $("#filename").val();
	var alamat = $("#cari_alamat").val();
	var tlp = $("#cari_tlp").val();
//prosesLoading();
$('#tables-umat').html('<div style="vertical-align: middle;padding-left: 500px;"><img src="img/ajax-loader.gif"><br/><br/><p style="padding-right:50px;"></p></div>');
	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=findumat&notlp='+tlp+'&alamat='+alamat,
		        success: function (result) {
		//			alert(result);
		$('#tables-umat').html('');
		$('#table-search-umat').show();
			var jsons = JSON.parse(result);
			
			var frma = '';
			
			for (var n = 0; n < jsons.length; n++) {
				var items = jsons[n];
				i = n + 1;
				frma = frma + '<tr id="tritem'+i+'"><td style="text-align:center;">';
				frma = frma + i;
				frma = frma + '</td>';
				frma = frma + '<td>'+items.tb_data_umat_nama_ktp+'</td>';
				frma = frma + '<td>'+items.tb_data_umat_alamat_tinggal+'</td>';
				frma = frma + '<td>'+items.tb_data_umat_no_tlp+'</td>';
				frma = frma + '</tr>';
				
				
			}
			$('#frmItem').html(frma);
	
			return false;
		}
	}
	);
}
*/


function exportPdfUmat(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
	var cari_alamat = $("#cari_alamat").val();
	var created_by = $("#created_by").val();
	
	var first_telp_rumah = $("#first_telp_rumah").val();
	var last_telp_rumah = $("#last_telp_rumah").val();
	var tlp = first_telp_rumah+'-'+last_telp_rumah;
	
	var jumlahcount = '';
	var countercheck = $("#countercheck").val();
	if(countercheck == 0){
		alert('Mohon checked data yang mau di export');
	} else {
	for(i=0; i<countercheck; i++){
		var no = i + 1;
		
		var inp_check = $("#inp_check"+no).val();
		 var coma;
        if (no == countercheck) {
            coma = '';
        } else {
            coma = ',';
        }
		jumlahcount = jumlahcount + inp_check + coma;
	}

    var newURL = 'export.php?export=' + exports + '&file=' + file + '&alamat='+cari_alamat+ '&notlp='+ tlp + '&created_by='+created_by+ '&jumlahcount='+ jumlahcount;
;
    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
	}

    return false;


}

function exportExcelUmat(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
	var cari_alamat = $("#cari_alamat").val();
	var created_by = $("#created_by").val();
	
	var first_telp_rumah = $("#first_telp_rumah").val();
	var last_telp_rumah = $("#last_telp_rumah").val();
	var tlp = first_telp_rumah+'-'+last_telp_rumah;
	
	var jumlahcount = '';
	var countercheck = $("#countercheck").val();
	if(countercheck == 0){
		alert('Mohon checked data yang mau di export');
	} else {
	for(i=0; i<countercheck; i++){
		var no = i + 1;
		
		var inp_check = $("#inp_check"+no).val();
		 var coma;
        if (no == countercheck) {
            coma = '';
        } else {
            coma = ',';
        }
		jumlahcount = jumlahcount + inp_check + coma;
	}

    var newURL = 'export.php?export=' + exports + '&file=' + file + '&alamat='+cari_alamat+ '&notlp='+ tlp + '&created_by='+created_by+ '&jumlahcount='+ jumlahcount;
;
    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
	}

    return false;


}

function addCheck(obj,i){
//	alert(obj.checked);

if(obj.checked == true){
	frmAddCheck(1,obj.value,i);	
} else {
	frmAddCheck(2,obj.value,i);
}
	
}

function frmAddCheck(type,id,n){
	 var i = $("#countercheck").val();
	 if(type == 1){
		if (i == '' || i == null) {
        $("#countercheck").val(0);
        i = 0;
        //   alert(i);
    }

    i = parseFloat(i) + 1;
	frmCheck = '<input type="hidden" id="inp_check'+i+'" value="0" />';
	 $('#frmCheck').append(frmCheck);
	 $("#inp_check"+i).val(id);	
    $("#countercheck").val(i);	 
	 } else {
		  i = parseFloat(i) - 1;
		$("#inp_check"+n).remove();	
		$("#countercheck").val(i);	
	 }
    // alert(i);
    
}
