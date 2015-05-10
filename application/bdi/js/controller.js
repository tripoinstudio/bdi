function addSentra(id,type) {
	//alert(id);
	
	$('#buttonsaveitem').show();
	$('#createitem').show();
	$('#table-item').show();
	var str = $("#filename").val();
	var tableup = $("#tableup").val();
	var i = $("#countername").val();
	// alert(i);
	if (i == '' || i == null) {
		$("#countername").val(0);
		i = 0;
		//   alert(i);
	}
	i = parseFloat(i) + 1;
	$('#proses_loading_item').html('<img src="img/ajax-loader.gif" style="width:30px;height:30px;">');
	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=lovsearchdaerah&id='+id+'&type='+tableup,
		        success: function (result) {
			//		alert(result);
			$('#proses_loading_item').html('');
			var jsons = JSON.parse(result);
			
			var frma = '';
			if(type == 1) {
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
			} else {
				frma = frma + '<tr id="tritem'+i+'"><td style="text-align:center;">';
				frma = frma + '<a href="javascript:void(0)" onclick="return delItemssentra(' + i + ',0)" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> ';
				frma = frma + '</td>';
				frma = frma + '<td><input type="hidden"  id="idItem' + i + '"  value="0" name="name" placeholder="" class="span3" />';
				frma = frma + '<input type="text"  id="name' + i + '" value="" name="name" placeholder="" class="span6" /></td>';
				frma = frma + '</tr>';
				$('#frmItem').append(frma);
				$("#countername").val(i);
			}
		//	if(jsons != null){
			
		//	}
			return false;
		}
	}
	);
}
function searchListData(idr) {
	addSentra(idr.value,1);
}


function delItemssentra(line, values) {
	var file = $('#filename').val();
	var daerah = $('#lovDaerahTr').val();
    if (confirm('Are you sure you want to remove this?')) {
		if(values != null){
		prosesSaveADM(file, 'delitem',daerah,values);	
		} else {
        var countLine = Object($('#frmItem tr')).length;
	//	alert(countLine);
        var counter = $("#countername").val();
        for (var i = line; i < countLine; i++) {
            var no = parseFloat(i) + 1;
            var desc = $("#description" + no).val();
            var idDesc = $("#idDesc" + no).val();
            var units = $("#unit" + no).val();
            var price = $("#price" + no).val();
            var qty = $("#qty" + no).val();
            var disc = $("#disc" + no).val();
            var amount = $("#amount" + no).val();
            $("#description" + i).val(desc);
            $("#idDesc" + i).val(idDesc);
            $("#price" + i).val(price);
            $("#qty" + i).val(qty);
            $("#disc" + i).val(disc);
            $("#amount" + i).val(amount);
        }
        $("#tritem" + countLine).remove();
        $("#countername").val(parseFloat(counter) - 1);
        //	subTotal();
		}
    }
}

function sendingsaveADM(){
	var countername = $('#countername').val();
    var sendings = '{"listitem":[';
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
        sendings = sendings + '{"id":"' + idItem + '","name":"' + name + '"}' + coma;
//    sendingKeluarga = '&nameKel=' + nameKel + '&lovNameTr2=' + lovNameTr2;
    }
	sendings = sendings + ']}';
	return sendings;
}

function selectDaerah(id) {
	//	alert(id);
	var str = $("#filename").val();
	
	var frma = '<select id="lovDaerahTr" class="span6 chosen" onchange="searchListData(this);" data-placeholder="Choose a Name" tabindex="1">';
	frma = frma + '<option value="0"><b>Select ... </b></option>';
	$.ajax( {
		type: 'get',
		        url: 'controller.php',
		        data: 'content=' + str + '&action=lovdaerah',
		        success: function (result) {
		//	alert(result);
		
			var jsons = JSON.parse(result);
			for (var n = 0; n < jsons.length; n++) {
				var items = jsons[n];
				if(id == items.tb_data_id) {
					frma = frma + '<option value="' + items.tb_data_id + '" selected="selected"><b>' + items.tb_data_name + '</b></option>';
				} else {
					frma = frma + '<option value="' + items.tb_data_id + '"><b>' + items.tb_data_name + '</b></option>';
				}
			}
			frma = frma + '</select>';
			$('#lovDaerahs').html(frma);
			$('.chosen').chosen();
		}
	}
	);
}