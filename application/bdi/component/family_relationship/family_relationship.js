$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        addItemFR(1);

    } else if (actions == 'edit' || actions == 'view') {
    }

});
function saveCetya(str, action) {
    var sendings = '';
    var personal_identity = $('#lovspersonal_identity').val();
    var counter = $('#counter').val();
    sendings = '{"personal_identity":"' + personal_identity + '","item":[';
    for (var s = 0; s < counter; s++) {
        var i = parseFloat(s) + 1;
        var coma;
        var code = $('#code' + i).val();
        var name = $('#lovNameTr' + i).val();
        if (i == $("#counter").val()) {
            coma = '';
        } else {
            coma = ',';
        }
        sendings = sendings + '{"code":"' + code + '","name":"' + name + '"}' + coma;

    }
    sendings = sendings + ']}';


    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending, '&items=' + sendings);
    }

}


function delItems(line, values) {
    if (confirm('Are you sure you want to remove this?')) {

        var countLine = Object($('#item tr')).length;
        var counter = $("#counter").val();
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
        $("#it" + countLine).remove();
        $("#counter").val(parseFloat(counter) - 1);
        //	subTotal();
    }
}


function addItemFR() {
    var con = $("#counter").val();
    var i = parseFloat(con) + 1;
    var frma = '';
//    for (var i = 1; i < con; i++) {
    frma = '<tr id="it' + i + '">';
    frma = frma + '<td style="text-align:center;"><input id="idItem' + i + '" type="hidden" value="0"><button class="btn btn-danger" onclick="return delItems(' + i + ',0)"><i class="icon-remove icon-white"></i></button></td>';
    frma = frma + '<td style="text-align:center;"><input id="code' + i + '" type="text" placeholder="example : ibu" class="span12"></td>';
    frma = frma + '<td style="text-align:left;" id="lovName' + i + '">';
    frma = frma + '</td>';
    frma = frma + '</tr>';
    //   }
    // $('#items').show();
    $('#item').append(frma);
    $('#counter').val(i);
    selectPI(i);
}

function selectPI(i) {
    var str = 'personal_identity';
    var frma = '<select id="lovNameTr' + i + '" class="span12 chosen" data-placeholder="Choose a Category" tabindex="1">';
    $.ajax({
        type: 'get',
        url: 'actions.php',
        data: 'content=' + str + '&action=lovname',
        success: function (result) {
            //   alert(result);
            var jsons = JSON.parse(result);
            frma = frma + '<option value=""><b>Select Name ...</b></option>';
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
//                if (items.menu_function_level != "1") {
//                    frma = frma + '<option style="font-size:10px;"  value="' + items.tb_personal_identity_id + '"> - ' + items.tb_personal_identity_name + '</option>';
//                } else {
                frma = frma + '<option value="' + items.tb_personal_identity_id + '"><b>' + items.tb_personal_identity_name + '</b></option>';
//                }
            }
            frma = frma + '</select>';
            $('#lovName' + i).html(frma);
            //        $('.chosen').chosen();
        }


    });
}
function addItem() {
    var idGroup = $("#idGroupNow").val();
    var i = $("#counter").val();
    // alert(i);
    if (i == '' || i == null) {
        $("#counter").val(0);
        i = 0;
        //   alert(i);
    }

    i = parseFloat(i) + 1;
//var urut = parseFloat(i) - 1;
    frma = '<tr id="it' + i + '">';
    frma = frma + '<td style="text-align:center;"><input id="idItem' + i + '" type="hidden" value="0"><button class="btn btn-danger" onclick="delItem(' + i + ')"><i class="icon-remove icon-white"></i></button></td>';
    frma = frma + '<td style="text-align:left;" id="lovName' + i + '">';
    /*   frma = frma + '<option value=""></option>';
     frma = frma + '<option value="Category 1">Category 1</option>';
     frma = frma + '<option value="Category 2">Category 2</option>';
     frma = frma + '<option value="Category 3">Category 5</option>';
     frma = frma + '<option value="Category 4">Category 4</option>'; */
    frma = frma + '</td>';
    frma = frma + '<td style="text-align:center;"><span id="spanstatus' + i + '"><a href="javascript:void(0)" onclick="setStatus(' + i + ',1);"><input type="hidden" id="setstatus' + i + '" value="1" /><span class="label label-success">Active</span></a></span></td>';
//    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="viewc' + i + '" type="checkbox" value="1"></td>';
//    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="createc' + i + '" type="checkbox" value="1"></td>';
//    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="editc' + i + '" type="checkbox" value="1"></td>';
//    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="deletec' + i + '" type="checkbox" value="1"></td>';
    frma = frma + '</tr>';
    // $('#items').show();
    $('#item').append(frma);
    $('#counter').val(i);
    selectName(i, idGroup);
    // formatPrice(i);
    // formatTotalPrice(i);
}