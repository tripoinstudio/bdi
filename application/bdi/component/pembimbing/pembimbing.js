$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
  $('#create').hide();
 // addPembimbing(0,1); 

	
});
function savePembimbing2(str, action) {
    var countername = $('#countername').val();
    //var remarks = $('#remarks').val();
	var sendingitem = '{"items":[';
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
	//alert(sendingitem);
    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
       // prosesSave(str, action, sending,'&data='+sendingitem);
		//$('#create').hide();
		
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
            sampleTable();
            $('#deleteAll').hide();
            $('#edit').hide();
			$('#create').hide();
            $('#back').hide();
			$('#cancel').hide();
        }
    }
    if (action == 'save') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=save" + '&data='+sendingitem, true);
    }

    xmlhttp.send();
    }

}

function addPembimbing(id,type) {
	var i = $("#countername").val();
	// alert(i);
	if (i == '' || i == null) {
		$("#countername").val(0);
		i = 0;
		//   alert(i);
	}
	i = parseFloat(i) + 1;
	//$('#proses_loading_item').html('<img src="img/ajax-loader.gif" style="width:30px;height:30px;">');
	var frma = '';
	
				frma = frma + '<tr id="tritem'+i+'"><td style="text-align:center;">';
				frma = frma + '<a href="javascript:void(0)" onclick="return delitempem(' + i + ',0)" data-original-title="Remove" data-placement="bottom" rel="tooltip" class="btn  btn-small"><i class="gicon-remove "></i></a> ';
				frma = frma + '</td>';
				frma = frma + '<td><input type="hidden"  id="idItem' + i + '"  value="0" name="name" placeholder="" class="span3" />';
				frma = frma + '<input type="text"  id="name' + i + '" value="" name="name" placeholder="" class="span6" /></td>';
				frma = frma + '</tr>';
				$('#frmItem').append(frma);
				$("#countername").val(i);
			
}

function delitempem(line, values) {
    if (confirm('Are you sure you want to remove this?')) {
		if(values != 0){
			var str = "pembimbing";
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
            sampleTable();
            $('#deleteAll').hide();
            $('#edit').hide();
			$('#create').hide();
            $('#back').hide();
			$('#cancel').hide();
        }
    }
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=delete" + '&id='+values, true);
    xmlhttp.send();
    	
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