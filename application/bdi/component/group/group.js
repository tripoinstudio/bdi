$(function () {
    var counter = $('#counter').val();
    for (var s = 0; s < counter; s++) {
        var i = s + 1;
        var view = $('#viewc' + i);
        var create = $('#createc' + i);
        var edit = $('#editc' + i);
        var deletes = $('#deletec' + i);
        //   alert(view.val());
        if (view.val() == 2) {

            view.prop('checked', true);
        } else {
            view.prop('checked', false);
        }

        if (create.val() == 2) {
            create.prop('checked', true);
        } else {
            create.prop('checked', false);
        }

        if (edit.val() == 2) {
            edit.prop('checked', true);
        } else {
            edit.prop('checked', false);
        }

        if (deletes.val() == 2) {
            deletes.prop('checked', true);
        } else {
            deletes.prop('checked', false);
        }

        $('#viewc' + i).change(function () {
            // alert("masuk");
            if ($(this).attr('checked')) {
                //   alert("tes" + i);
                $(this).val(2);
            } else {
                $(this).val(1);
            }
        });

        $('#createc' + i).change(function () {
            if ($(this).attr('checked')) {
                $(this).val(2);
            } else {
                $(this).val(1);
            }
        });

        $('#editc' + i).change(function () {
            if ($(this).attr('checked')) {
                $(this).val(2);
            } else {
                $(this).val(1);
            }
        });

        $('#deletec' + i).change(function () {
            if ($(this).attr('checked')) {
                $(this).val(2);
            } else {
                $(this).val(1);
            }
        });



        // var view = $('#viewc' + i).val();

    }

});


function delItems2(line, values) {
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

function setStatus(urut, id) {
    //   var statushref = $('#spanstatus'+urut).html();
    // alert(statushref);

    if (id == 1) {
        $('#spanstatus' + urut).html('<a href="javascript:void(0)" onclick="setStatus(' + urut + ',2);"><input type="hidden" id="setstatus' + urut + '" value="2" /><span class="label label-inverse">Non Active</span></a>');
    } else {
        $('#spanstatus' + urut).html('<a href="javascript:void(0)" onclick="setStatus(' + urut + ',1);"><input type="hidden" id="setstatus' + urut + '" value="1" /><span class="label label-success">Active</span></a>');
    }

}

function saveGroup(str, action) {
//alert(str);
    var sending;
    var code = $('#code').val();
    var name = $('#name').val();
    var counter = $('#counter').val();
    sending = '{"code":"' + code + '","name":"' + name + '","item":[';
    for (var s = 0; s < counter; s++) {
        var i = s + 1;
        var coma;
        var idItem = $('#idItem' + i).val();
        var idProduct = $('#lovNameTr' + i).val();
        var view = $('#viewc' + i).val();
        var create = $('#createc' + i).val();
        var edit = $('#editc' + i).val();

        var deletes = $('#deletec' + i).val();
        var setstatus = $('#setstatus' + i).val();

        var i = parseFloat(s) + 1;
        if (i == $("#counter").val()) {
            coma = '';
        } else {
            coma = ',';
        }
        // alert("sampe sini3");
        sending = sending + '{"idItem":"' + idItem + '","idLov":"' + idProduct + '","status":"' + setstatus + '","action":"' + view + ',' + create + ',' + edit + ',' + deletes + '"}' + coma;
        //   sending = sending + '{"idItem":"' + idItem + '","idLov":"' + idProduct + '","status":"' + setstatus + '","action":"2,2,2,2"}' + coma;

    }
    sending = sending + ']}';
    if (action == 'update') {
        var id = $('#idUp').val();
    }

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
            //  $('#create').hide();
        }
    }
    var sendingawal = "";
    if (action == 'save') {
        sendingawal = "?content=" + str + "&action=" + action + "&sending=" + sending;
        xmlhttp.open("GET", "component/content/index2.php" + sendingawal, true);
    } else {
        sendingawal = "?content=" + str + "&action=" + action + "&id=" + id + "&sending=" + sending;
        xmlhttp.open("GET", "component/content/index2.php" + sendingawal, true);
    }
 //   xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
 //   xmlhttp.setRequestHeader("Content-length", sendingawal.length);
    xmlhttp.send();



}
function selectName(i, idGroup) {
    var str = 'group';
    var frma = '<select id="lovNameTr' + i + '" class="span6 chosen" data-placeholder="Choose a Category" tabindex="1">';
    $.ajax({
        type: 'get',
        url: 'action.php',
        data: 'content=' + str + '&action=lovname&idGroup=' + idGroup,
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            //   alert(jsons.length);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
                //  alert(items.menu_function_level);
                if (items.menu_function_level != "1") {
                    frma = frma + '<option style="font-size:10px;"  value="' + items.menu_function_id + '"> - ' + items.menu_function_name + '</option>';
                } else {
                    frma = frma + '<option value="' + items.menu_function_id + '"><b>' + items.menu_function_name + '</b></option>';
                }
            }
            /*    $.each(result, function (index, n) {
             frma = frma + '<option value="' + result[index].menu_function_id + '">' + result[index].menu_function_name + '</option>';
             //   $('#lov' + lov).html(result);
             }); */
            //alert(frma);
            frma = frma + '</select>';
            $('#lovName' + i).html(frma);
            $('.chosen').chosen();
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

    frma = frma + '<td style="text-align:center;"><input id="idItem' + i + '" type="hidden" value="0"><button class="btn btn-danger" onclick="return delItems2(' + i + ',0)"><i class="icon-remove icon-white"></i></button></td>';

    frma = frma + '<td style="text-align:left;" id="lovName' + i + '">';
    /*   frma = frma + '<option value=""></option>';
     frma = frma + '<option value="Category 1">Category 1</option>';
     frma = frma + '<option value="Category 2">Category 2</option>';
     frma = frma + '<option value="Category 3">Category 5</option>';
     frma = frma + '<option value="Category 4">Category 4</option>'; */
    frma = frma + '</td>';
    frma = frma + '<td style="text-align:center;"><span id="spanstatus' + i + '"><a href="javascript:void(0)" onclick="setStatus(' + i + ',1);"><input type="hidden" id="setstatus' + i + '" value="1" /><span class="label label-success">Active</span></a></span></td>';
    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="viewc' + i + '" type="checkbox" value="1"></td>';
    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="createc' + i + '" type="checkbox" value="1"></td>';
    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="editc' + i + '" type="checkbox" value="1"></td>';
    frma = frma + '<td style="text-align:center;"><input onchange="tesclick(' + i + ');" id="deletec' + i + '" type="checkbox" value="1"></td>';
    frma = frma + '</tr>';
    // $('#items').show();
    $('#item').append(frma);
    $('#counter').val(i);
    selectName(i, idGroup);


    // formatPrice(i);
    // formatTotalPrice(i);
}
function tesclick(i) {
    //  alert(i);
    var view = $('#viewc' + i);
    var create = $('#createc' + i);
    var edit = $('#editc' + i);
    var deletes = $('#deletec' + i);
    if (view.attr('checked')) {
        //  alert("tes" + i);
        view.val(2);
    } else {
        view.val(1);
    }

    if (create.attr('checked')) {
        create.val(2);
    } else {
        create.val(1);
    }
    if (edit.attr('checked')) {
        edit.val(2);
    } else {
        edit.val(1);
    }

    if (deletes.attr('checked')) {
        deletes.val(2);
    } else {
        deletes.val(1);
    }
}

function exportPdf() {
    var exports = 'pdf';
    var file = 'pdf-group';
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file + '&type=' + searchtype + '&field=' + searchfield;
    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }


    return false;


}