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
