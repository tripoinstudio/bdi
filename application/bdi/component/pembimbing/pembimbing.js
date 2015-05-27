$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
  $('#create').hide();

});
function savePembimbing2(str, action) {
    var countername = $('#countername').val();
    //var remarks = $('#remarks').val();
	var sendingitem = '{"list":[';
//    sending = '{"code":"' + code + '","name":"' + name + '","item":[';
    for (var i = 0; i < countername; i++) {
        var s = parseFloat(i) + 1;
        var idItem = $('#idItem' + s).val();
        var name = $('#name' + s).val();
        var coma;
        
        if (s == $("#countername").val()) {
            coma = '';
        } else {
            coma = ',';
        }
		var tritem = $("#tritem"+s).val();
		if(tritem == null){
			
		} else {
			sendingitem = sendingitem + '{"idItem":"' + idItem + '","name":"' + name + '"}' + coma;
		}
        
//    sendingKeluarga = '&nameKel=' + nameKel + '&lovNameTr2=' + lovNameTr2;
    }
    sendingitem = sendingitem + ']}';
	alert(sendingitem);
    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
     //   prosesSave(str, action, sending,'&data='+sendingitem);
    }

}

function addPembimbing(id,type) {
	var str = 'pembimbing';
	var i = $("#countername").val();
	// alert(i);
	if (i == '' || i == null) {
		$("#countername").val(0);
		i = 0;
		//   alert(i);
	}
	i = parseFloat(i) + 1;
	$('#proses_loading_item').html('<img src="img/ajax-loader.gif" style="width:30px;height:30px;">');
	var frma = '';
	if(type == 1) {
	$.ajax({
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=list&id='+id,
		        success: function (result) {
			//		alert(result);
			
			var jsons = JSON.parse(result);
			for (var n = 0; n < jsons.length; n++) {
				var items = jsons[n];
				i = n + 1;
				frma = frma + '<tr id="tritem'+i+'"><td style="text-align:center;">';
				frma = frma + '<a href="javascript:void(0)" onclick="return delItemssentra(' + i + ',' + items.tb_data_id + ')" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> ';
				frma = frma + '</td>';
				frma = frma + '<td><input type="hidden"  id="idItem' + i + '"  value="' + items.tb_data_id + '" name="name" placeholder="" class="span3" />';
				frma = frma + '<input type="text"  id="name' + i + '" value="' + items.tb_data_name + '" name="name" placeholder="" class="span6" /></td>';
				frma = frma + '</tr>';
				
				
			}
			$('#frmItem').html(frma);
			//alert(jsons);
				if(jsons == ''){
		//			alert(jsons+'1');
			$("#countername").val('0');
			} else {
			//	alert(jsons+'2');
				$("#countername").val(i);
				
				
			}
			
		//	if(jsons != null){
			
		//	}
			return false;
		}
	});
	} else {
		$('#proses_loading_item').html('');
				frma = frma + '<tr id="tritem'+i+'"><td style="text-align:center;">';
				frma = frma + '<a href="javascript:void(0)" onclick="return delItemssentra(' + i + ',0)" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> ';
				frma = frma + '</td>';
				frma = frma + '<td><input type="hidden"  id="idItem' + i + '"  value="0" name="name" placeholder="" class="span3" />';
				frma = frma + '<input type="text"  id="name' + i + '" value="" name="name" placeholder="" class="span6" /></td>';
				frma = frma + '</tr>';
				$('#frmItem').append(frma);
				$("#countername").val(i);
			}
}