$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   $('#create').hide();
   $('#pageFind').hide();
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
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
function saveDataPembimbing(str, action) {
    var itemUmatId = $('#itemUmatId').val();
	var pembimbing = $('#lovspembimbing').val();
	var birth_dates = $('#tanggal').val();
	var tanggal = birth_dates.split("-").reverse().join("-");

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending,'&itemUmatId='+itemUmatId+'&pembimbing='+pembimbing+'&tanggal='+tanggal);
    }

}


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
	
	var str = 'data-pembimbing';
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
	
}

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
	
	var str = 'data-pembimbing';
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
	
}
function pilihDataUmat(id,name){
	$('#myModal').modal('hide');
	$('#itemUmatId').val(id);
	$('#itemUmatName').html(name);
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
	var startDate = $('#startDate').val();
	var endDate = $('#endDate').val();
	var lovspembimbing = $('#lovspembimbing').val();
	
	var str = 'data_pembimbing';
//	$('#myModal').modal('show');
$('#loadingser').html('<div style="vertical-align: middle;padding-left: 500px;"><img src="img/ajax-loader.gif"><br/><br/><p style="padding-right:50px;"></p></div>');

	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=search&name='+name+'&startDate='+startDate+'&endDate='+endDate+'&pembimbing='+lovspembimbing,
		        success: function (result) {
		//			alert(result);
					
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