$(function () {


    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);

    $('.btn').tooltip();
    $(".chzn-select").chosen({
        disable_search_threshold: 10
    });

});


function maxFourNumber(evt, obj) {

    var charCode = (evt.which) ? evt.which : event.keyCode
    var value = obj.value;
    var dotcontains = value.indexOf(".") != -1;
    if (dotcontains)
        if (charCode == 46)
            return false;
    if (charCode == 46)
        return true;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    var subvalue = obj.value;
    var res = subvalue.substring(0, 3);
    if (obj.value.length > 3) {
        obj.value = res;
    } else {
        obj.value = subvalue;
    }
    return true;
}
function maxEightNumber(evt, obj) {

    var charCode = (evt.which) ? evt.which : event.keyCode
    var value = obj.value;
    var dotcontains = value.indexOf(".") != -1;
    if (dotcontains)
        if (charCode == 46)
            return false;
    if (charCode == 46)
        return true;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    var subvalue = obj.value;
    var res = subvalue.substring(0, 8);
    if (obj.value.length > 8) {
        obj.value = res;
    } else {
        obj.value = subvalue;
    }
    return true;
}


function maxTenNumber(evt, obj) {

    var charCode = (evt.which) ? evt.which : event.keyCode
    var value = obj.value;
    var dotcontains = value.indexOf(".") != -1;
    if (dotcontains)
        if (charCode == 46)
            return false;
    if (charCode == 46)
        return true;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    var subvalue = obj.value;
    var res = subvalue.substring(0, 10);
    if (obj.value.length > 10) {
        obj.value = res;
    } else {
        obj.value = subvalue;
    }
    return true;
}
function searchFields() {
    // alert("tes");
}

function sampleTable() {

    //	  alert("masuksini");
//    $('#sample_1').dataTable({
//        "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
//        "sPaginationType": "bootstrap",
//        "oLanguage": {
//            "sLengthMenu": "_MENU_ records per page",
//            "oPaginate": {
//                "sPrevious": "Prev",
//                "sNext": "Next"
//            }
//        },
//        "aoColumnDefs": [{
//                'bSortable': false,
//                'aTargets': [0]
//            }],
//        "bDestroy": true
//    });

    var dontSort = [];
    $('#datatable_example thead th').each(function () {
        if ($(this).hasClass('no_sort')) {
            dontSort.push({"bSortable": false});
        } else {
            dontSort.push(null);
        }
    });
    $('#datatable_example').dataTable({
        "sDom": "<'row-fluid table_top_bar'<'span12'<'span4 to_hide_tablet'l><'to_hide_phone' f>>>t<'row-fluid control-group full top'<'span4'><'span8 pagination'p>>",
        "aaSorting": [[1, "asc"]],
        "bPaginate": true,
        "sPaginationType": "full_numbers",
        "bJQueryUI": false,
        "aoColumns": dontSort,
    });
    $.extend($.fn.dataTableExt.oStdClasses, {
        "s`": "dataTables_wrapper form-inline"
    });

    $(".chzn-select, .dataTables_length select").chosen({
        disable_search_threshold: 10

    });




}

function checkedAll(length) {
    // alert(length);
    $('#jumDel').val(length);
    var checked = document.getElementById("checkedAll").checked;
//alert(checked);
    var sending = '';
    if (checked == true) {

        for (var i = 0; i < length; i++) {
            var no = i + 1;

            //	alert(no);
            //	alert($('#checkboxes'+i).attr('checked', true));
            // alert(document.getElementById('checkboxes'+i).checked);
            $('#checkboxes' + no).attr('checked', true);
            var coma;
            var idItem = $('#idItem' + no).val();
            if (no == $("#jumDel").val()) {
                coma = '';
            } else {
                coma = ',';
            }
            sending = sending + idItem + coma;
        }
        $('#checkDelete').val(sending);
        $('#deleteAll').show();
    } else if (checked == false) {
        for (var i = 0; i < length; i++) {
            var no = i + 1;
            //	alert(no);
            //alert(document.getElementById("checkboxes").checked);
            $('#checkboxes' + no).attr('checked', false);
        }
        $('#checkDelete').val(0);
        $('#deleteAll').hide();
    }
 //   alert(sending);
    //	return false;
}

function checkedList(id, urut) {
    //  alert(id);
    //  alert(id);
    var somecek = $('#checkboxes' + urut);
    var jumdel = $('#jumDel').val();
    var checked = document.getElementById("checkboxes" + urut).checked;
    //   var stringId = '';
//alert(checked);
    if (checked == false) {
        $("#tr" + urut).css("background", "#599BC8");
        document.getElementById('checkboxes' + urut).checked = true;
        jumdel = parseFloat(jumdel) + 1;
        $('#checkedAll').attr('checked', false);

        checks(id, jumdel);

    } else {
        document.getElementById('checkboxes' + urut).checked = false;
        $("#tr" + urut).css("background", "");

        jumdel = parseFloat(jumdel) - 1;
        $('#checkedAll').attr('checked', false);
        unchecks(id, jumdel);

    }
    /*
     if (somecek.attr('checked')) {
     jumdel = parseFloat(jumdel) + 1;
     $('#checkedAll').attr('checked', false);
     
     checks(id, jumdel);
     } else {
     
     jumdel = parseFloat(jumdel) - 1;
     $('#checkedAll').attr('checked', false);
     unchecks(id, jumdel);
     }
     */

}
function checks(id, jumdel) {
    var sending = $('#checkDelete').val();

    $('#jumDel').val(jumdel);
    if (jumdel > 0) {
        $('#deleteAll').show();
    } else {
        $('#deleteAll').hide();
    }
    //   var sending = '';
    if (jumdel == 1) {
        $('#firstRowField').val(id);
        sending = id;
    } else {
        sending = sending + ',' + id;
        var first = $('#firstRowField').val();
        if (id == first) {
            var sendings = $('#checkDelete').val();
            sending = id + ',' + sendings;
        }
    }
    // alert(sending);



    $('#checkDelete').val(sending);
}
function unchecks(id, jumdel) {
    var sending = $('#checkDelete').val();

    $('#jumDel').val(jumdel);
    if (jumdel > 0) {
        $('#deleteAll').show();
    } else {
        $('#deleteAll').hide();
    }
    //   var sending = '';
    var res;
    if (jumdel == 0) {
        sending = 0;
    } else {

        res = sending.replace("," + id, "");
        if (sending == 1) {
            $('#firstRowField').val(res);
        }
        var first = $('#firstRowField').val();
        if (id == first) {

            res = sending.replace(id + ",", "");
            var array = res.split(',', 1);
            //  alert(array);
            $('#firstRowField').val(array);
        }
    }
    //  alert(res);

    $('#checkDelete').val(res);

}

function showSearch(str, name) {
    // str = "search";

//alert(str);
//alert(name);
//$('#loading').html('<img src="img/ajax-loader.gif">');
    var searchfield = $('#searchfield').val();
    var searchtype = $('#searchtype').val();
    //  if(sea)

    $('#namePage').html(name);

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

            getJavascript(str);

            sampleTable();

            $('#startdate').datepicker();
            $('#enddate').datepicker();
            $('#contentTable').html('');
            $('#deleteAll').hide();
            $('#edit').hide();
            $('#cancel').hide();


        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + name + "&searchfield=" + searchfield + "&searchtype=" + searchtype, true);
    xmlhttp.send();

    return true;

}

function showMenu(str, name) {
//alert(str);
//alert(name);
//$('#loading').html('<img src="img/ajax-loader.gif">');

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

            getJavascript(str);
            sampleTable();

            $('#startdate').datepicker();
            $('#enddate').datepicker();
            $('#contentTable').html('');
            $('#deleteAll').hide();
            $('#edit').hide();
            $('#cancel').hide();


        }
    }
    if (name == 'Tambah Data Umat') {
        xmlhttp.open("GET", "component/content/index2.php?content=data_umat&action=new", true);
    } else if (name == 'List Data Umat') {
        xmlhttp.open("GET", "component/content/index2.php?content=data_umat&namemenu=List Data Umat", true);
    } else {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str, true);

    }

    xmlhttp.send();

    return true;

}

function showProfile(str, name) {
//alert(str);
//alert(name);
prosesLoading();
    $('#namePage').html(name);

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
            getJavascript(str);
            sampleTable();
            $('#startdate').datepicker();
            $('#enddate').datepicker();
            $('#contentTable').html('');
            $('#deleteAll').hide();
            $('#edit').hide();
            $('#cancel').hide();
            $('#create').hide();


            return false;


        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str, true);
    xmlhttp.send();

    return false;

}


function saveBack(str, name) {
//alert(str);
//alert(name);
    $('#namePage').html(name);

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
            getJavascript(str);
            sampleTable();
            //  saveBack();

            $('#startdate').datepicker();
            $('#enddate').datepicker();
            $('#contentTable').html('');
            $('#deleteAll').hide();
            $('#edit').hide();
            $('#cancel').hide();




        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&save=berhasil", true);
    xmlhttp.send();



}


function showCreate(str, action) {

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



            getJavascript(str);
            $('#export-pdf').hide();
            $('#export-excel').hide();
            $('#deleteAll').hide();
            $('#create').hide();
            $('#edit').hide();
            $('#cancel').hide();
            $('#searchSpan').hide();
            $('#searchButton').hide();
        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action, true);
    xmlhttp.send();



}
function lovNew(str, action, lovnya, ket) {
//alert(lovnya);
    var lov = $('#lov' + lovnya + 's').val();
    selectLov(str, action, lov, ket);

}



function lovEdit(str, action, lovnya, ket) {
    var idLov = $('#idLov' + lovnya).val();
    var lov = $('#lov' + lovnya + 's').val();

    selectLovView(str, action, lov, idLov, ket);


}

function lovNewManual(str, action, lovnya, parameter, keterangan) {
    var lov = $('#lov' + lovnya + 's').val();
    $.ajax({
        type: 'get',
        url: 'action.php',
        data: 'content=' + str + '&action=' + action + '&lov=' + lov + '&manual=true&parameter=' + parameter,
        success: function (result) {

            $('#lov' + lov).html(result);

        }
    });
}

function lovEditManual(str, action, lovnya, parameter, keterangan) {
    var idLov = $('#idLov' + lovnya).val();
    var lov = $('#lov' + lovnya + 's').val();

    $.ajax({
        type: 'get',
        url: 'action.php',
        data: 'content=' + str + '&action=' + action + '&lov=' + lov + '&idLov=' + idLov + '&keterangan=' + keterangan + '&manual=true&parameter=' + parameter,
        success: function (result) {

            $('#lov' + lov).html(result);

        }
    });


}


function getJavascript(str) {
//alert("tes");
    var backendss = $('#backendss').val();
    if (backendss == 1) {
        $.getScript("component/" + str + "/" + str + ".js", function () {
        });
//	alert("tes");
        $.getScript("js/js.js", function () {
        });

    } else {
        $.getScript("component/" + str + "/" + str + ".js", function () {
        });
//	alert("tes");
        $.getScript("js/js.js", function () {
        });
    }


    //  $.getScript("js/scripts.js", function () {});
    //   App.init();
//	$.getScript("js/jquery.formatCurrency.js", function(){}); 


}


function viewEdit(str, id, action) {
    //  $('.btn').tooltip('disable');
//alert(str);
//var id = $('#id').val();
//alert(id);
//alert(action);
//
prosesLoading();
//$("#loading").show();
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
            $('#create').hide();
            $('#contentTable').html('');
            if (action == 'view') {
                $('#export-pdf').hide();
                $('#export-excel').hide();
                $('#edit').show();
                $('#cancel').show();
                $('#searchSpan').hide();
                $('#searchButton').hide();
            } else if (action == 'edit') {
                $('#export-pdf').hide();
                $('#export-excel').hide();
                $('#edit').hide();
                $('#cancel').hide();
                $('#searchSpan').hide();
                $('#searchButton').hide();
            }
            getJavascript(str);

        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id, true);
    xmlhttp.send();

    return true;

}

function prosesLoading(){
	$('#txtHint').html('<div style="vertical-align: middle;padding-left: 500px;padding-top: 200px;padding-bottom: 200px;"><img src="img/ajax-loader.gif" style="width:75px;height:75px;"><br/><br/><p style="padding-right:50px;">Please Wait ... </p></div>');
}

function viewEditService(str, id, action, desc) {
//alert(str);
//var id = $('#id').val();
//alert(id);
//alert(action);
//var name = $('#name' + id).val();
    //    alert(name);
//viewEditContent(id);
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
            $('#create').hide();
            $('#contentTable').html('');
            if (action == 'view') {
                $('#edit').show();
                $('#cancel').show();
                $('#searchSpan').hide();
                $('#searchButton').hide();
            } else if (action == 'edit') {
                $('#edit').hide();
                $('#cancel').hide();
                $('#searchSpan').hide();
                $('#searchButton').hide();
            }
            //   alert(id);
            getJavascript(str);
            var ipconfig = $('#ipConfig').val();
            viewEditContent(ipconfig);


        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id + desc, true);
    xmlhttp.send();

    return true;

}

function setJsonView(urut) {
    var jsons = '[' + $('#jsonList' + urut).val() + ']';
    $('#setjson').val(jsons);
    var jsonList = $('#setjson').val();
    var jsons2 = JSON.parse(jsonList);
    var item = jsons2[0];

    return item;
}

function setJsonEdit() {
    var jsonList = $('#setjson').val();
    var jsons2 = JSON.parse(jsonList);
    var item = jsons2[0];

    return item;
}


function deletes(str, id, action) {
//alert(str);
//var id = $('#id').val();

    if (!confirm('Are you sure delete this data?')) {
        return false;
    } else {
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
                getJavascript(str);
                $('#deleteAll').hide();
                $('#edit').hide();
                $('#searchSpan').hide();
                $('#searchButton').hide();
                //  $('#create').hide();
            }
        }
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id, true);
        xmlhttp.send();

        return true;
    }


}

function deleteAllfun(str, action) {
//alert(str);

    var idList = $('#checkDelete').val();
    if (!confirm('Are you sure delete this data?')) {
        return false;
    } else {
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
                getJavascript(str);
                $('#deleteAll').hide();
                $('#edit').hide();
                $('#searchSpan').hide();
                $('#cancel').hide();
                $('#searchButton').hide();
                //  $('#create').hide();
            }
        }
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&idList=" + idList, true);
        xmlhttp.send();

        return true;
    }


}

function moneyFormats(number) {
//	alert( number );
//	var price	  = number.split('.');
//	if(isNaN(price[0])) return "";
    var str = new String(number);

//	alert( str.length ); 
    var result = "", len = str.length;
    for (var i = len - 1; i >= 0; i--) {
        if ((i + 1) % 3 == 0 && i + 1 != len)
            result += ",";
        result += str.charAt(len - 1 - i);
    }
    var newPrice = result;
    return newPrice;
}

function moneyFormat(number) {
    var price = number.split('.');
    if (isNaN(price[0]))
        return "";
    var str = new String(price[0]);
    var result = "", len = str.length;
    for (var i = len - 1; i >= 0; i--) {
        if ((i + 1) % 3 == 0 && i + 1 != len)
            result += ",";
        result += str.charAt(len - 1 - i);
    }
    var newPrice = result;
    return newPrice;
}

function selectLovView(str, action, lov, idLov, keterangan) {
    $.ajax({
        type: 'get',
        url: 'action.php',
        data: 'content=' + str + '&action=' + action + '&lov=' + lov + '&idLov=' + idLov + '&keterangan=' + keterangan,
        success: function (result) {
            $('#lov' + lov).html(result);
        }
    });
}



function selectLov(str, action, lov, keterangan) {
    $.ajax({
        type: 'get',
        url: 'action.php',
        data: 'content=' + str + '&action=' + action + '&lov=' + lov + '&keterangan=' + keterangan,
        success: function (result) {
            /*	var frma;
             frma	= '<select name="lov" id="lov" class="input-medium m-wrap">';
             frma	= frma + '<option value="0">Select All</option>';
             alert(result);
             $.each(result, function(i,n){
             frma	= frma + '<option value="'+n['tb_warehouse_id']+'">'+n['tb_warehouse_name']+'</option>';
             
             });
             frma = frma + '</select>';
             */
            //	alert(frma);
//alert(result);
            $('#lov' + lov).html(result);

        }
    });
}

function queryString(name, ipconfig) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(ipconfig);
    if (results == null) {
        return null;
    } else {
        return results[1];
        return query_string;
    }
}

function formatAmount() {
//	alert("tes");
    $('#price').blur(function () {
        $("#price").html(null);
        $(this).formatCurrency({colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: 0});
//		$(this).formatCurrency({ colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: 0 });
    })
            .keyup(function (e) {
                var e = window.event || e;
                var keyUnicode = e.charCode || e.keyCode;
                if (e !== undefined) {
                    switch (keyUnicode) {
                        case 16:
                            break; // Shift
                        case 27:
                            this.value = '';
                            break; // Esc: clear entry
                        case 35:
                            break; // End
                        case 36:
                            break; // Home
                        case 37:
                            break; // cursor left
                        case 38:
                            break; // cursor up
                        case 39:
                            break; // cursor right
                        case 40:
                            break; // cursor down
                        case 78:
                            break; // N (Opera 9.63+ maps the "." from the number key section to the "N" key too!) (See: http://unixpapa.com/js/key.html search for ". Del")
                        case 110:
                            break; // . number block (Opera 9.63+ maps the "." from the number block to the "N" key (78) !!!)
                        case 190:
                            break; // .
                        default:
                            $(this).formatCurrency({colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: -1, eventOnDecimalsEntered: true});
                    }
                }
            });
}

function formatAmountItem() {
//	alert("tes");
    $('#amount').blur(function () {
        $("#amount").html(null);
        $(this).formatCurrency({colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: 0});
//		$(this).formatCurrency({ colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: 0 });
    })
            .keyup(function (e) {
                var e = window.event || e;
                var keyUnicode = e.charCode || e.keyCode;
                if (e !== undefined) {
                    switch (keyUnicode) {
                        case 16:
                            break; // Shift
                        case 27:
                            this.value = '';
                            break; // Esc: clear entry
                        case 35:
                            break; // End
                        case 36:
                            break; // Home
                        case 37:
                            break; // cursor left
                        case 38:
                            break; // cursor up
                        case 39:
                            break; // cursor right
                        case 40:
                            break; // cursor down
                        case 78:
                            break; // N (Opera 9.63+ maps the "." from the number key section to the "N" key too!) (See: http://unixpapa.com/js/key.html search for ". Del")
                        case 110:
                            break; // . number block (Opera 9.63+ maps the "." from the number block to the "N" key (78) !!!)
                        case 190:
                            break; // .
                        default:
                            $(this).formatCurrency({colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: -1, eventOnDecimalsEntered: true});
                    }
                }
            });
}


function formatDiscount() {
    //alert("tes");
    $('#amount').blur(function () {
        $("#amount").html(null);
        $(this).formatCurrency({colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: 0});
//		$(this).formatCurrency({ colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: 0 });
    })
            .keyup(function (e) {
                var e = window.event || e;
                var keyUnicode = e.charCode || e.keyCode;
                if (e !== undefined) {
                    switch (keyUnicode) {
                        case 16:
                            break; // Shift
                        case 27:
                            this.value = '';
                            break; // Esc: clear entry
                        case 35:
                            break; // End
                        case 36:
                            break; // Home
                        case 37:
                            break; // cursor left
                        case 38:
                            break; // cursor up
                        case 39:
                            break; // cursor right
                        case 40:
                            break; // cursor down
                        case 78:
                            break; // N (Opera 9.63+ maps the "." from the number key section to the "N" key too!) (See: http://unixpapa.com/js/key.html search for ". Del")
                        case 110:
                            break; // . number block (Opera 9.63+ maps the "." from the number block to the "N" key (78) !!!)
                        case 190:
                            break; // .
                        default:
                            $(this).formatCurrency({colorize: true, negativeFormat: '-%s%n', roundToDecimalPlace: -1, eventOnDecimalsEntered: true});
                    }
                }
            });
}

function validationRequired() {
    var lengthfield = $("[name^=truetitles]").length;
    var required = "";
    for (i = 0; i < lengthfield; i++) {
        var input = $('span[name^=namens]').map(function (idx, elem) {

            return $(elem).attr("id");
        }).get(i);
        var inputval = $('[name^=truetitles]').map(function (idx, elem) {

            return $(elem).val();
        }).get(i);
        var inputid = $('[name^=truetitles]').map(function (idx, elem) {

            return $(elem).attr("id");
        }).get(i);
        //  alert(inputval);

        if (inputval == "") {
            $('#' + input).html('<label for="cname2" generated="true" class="error" style="display: block;">This field is required.</label>');
            required = "nulls";
        }

    }
    return required;
}

function beforeSave(action) {
    var lengthfield = $("[name^=truetitles]").length;
    var lengthfieldfalse = $("[name^=falsetitles]").length;
    var lengths = parseFloat(lengthfield) + parseFloat(lengthfieldfalse);
    var coma = '';

    var sendingedit = '&data={"item":[';
    var sending = '&data={"item":[';
    var values = '';
    if (lengthfield == 0) {
        sending += "";
    } else {
        for (i = 0; i < lengthfield; i++) {
            var jum = parseFloat(i) + 1;
            var inputval = $('[name^=truetitles]').map(function (idx, elem) {

                return $(elem).val();
            }).get(i);
            var inputid = $('[name^=truetitles]').map(function (idx, elem) {

                return $(elem).attr("id");
            }).get(i);
            //  alert(inputval);

            if (jum == lengthfield) {
                coma = '';
                if (lengthfieldfalse != 0) {
                    coma = '';
                } else {
                    coma = '';
                }
            } else {
                coma = ',';
            }

            sending += '{"code":"' + inputid + '"}' + coma;
            values += '{"values":"' + inputval + '"}' + coma;
            sendingedit += '{"code":"' + inputid + '","values":"' + inputval + '"}' + coma;


        }

    }
    if (lengthfieldfalse == 0) {
        // sending += "";
    } else {
        for (i = 0; i < lengthfield; i++) {

            var inputval = $('[name^=falsetitles]').map(function (idx, elem) {

                return $(elem).val();
            }).get(i);
            var inputid = $('[name^=falsetitles]').map(function (idx, elem) {

                return $(elem).attr("id");
            }).get(i);
            //  alert(inputval);

            if (jum == lengthfield) {
                coma = '';

            } else {
                coma = ',';
            }
            //       sending += '{"code":"' + inputid + '"}' + coma;
            //      values += '{"values":"' + inputval + '"}' + coma;
            //      sendingedit += '{"code":"' + inputid + '","values":"' + inputval + '"}' + coma;

            //   sending += '{"value":"'+inputval+'"}'+coma;



        }
    }
    sending += "]}";
    sending += '&values={"valuesit":[' + values + ']}';

    sendingedit += "]}";

//Versi Biasa
//    var sending = "";
//    if(lengthfield == 0){
//        sending += "";
//    } else {
//    for (i = 0; i < lengthfield; i++) {
//      
//        var inputval = $('[name^=truetitles]').map(function (idx, elem) {
//
//            return $(elem).val();
//        }).get(i);
//        var inputid = $('[name^=truetitles]').map(function (idx, elem) {
//
//            return $(elem).attr("id");
//        }).get(i);
//        //  alert(inputval);
//        
//        sending += "&"+inputid+"=" + inputval;
//
//       
//        
//    }
//    
//    }
//    if( lengthfieldfalse == 0){
//        sending += "";
//    } else {
//        for (i = 0; i < lengthfield; i++) {
//      
//        var inputval = $('[name^=falsetitles]').map(function (idx, elem) {
//
//            return $(elem).val();
//        }).get(i);
//        var inputid = $('[name^=falsetitles]').map(function (idx, elem) {
//
//            return $(elem).attr("id");
//        }).get(i);
//        //  alert(inputval);
//        
//        sending += "&"+inputid+"=" + inputval;
//
//       
//        
//    }
//    }
    if (action == 'update') {
        return sendingedit;
    } else {
        return sending;
    }
}
function prosesSave(str, action, sending, manual) {
    // DEFAULT SAVE or EDIT-- >
    if (action == 'update') {
        var id = $('#idUp').val();
    }
	
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
            //  $('#create').hide();
        }
    }
    if (action == 'save') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + sending + manual, true);
    } else {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id + sending + manual, true);
    }

    xmlhttp.send();


}

function prosesSaveADM(str, action,idP, manual) {
    // DEFAULT SAVE or EDIT-- >
    if (action == 'update') {
        var id = $('#idUp').val();
    }
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
			$('#cancel').hide();
			selectDaerah(idP);
			addSentra(idP,1);
        }
    }
    if (action == 'save') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action  + manual, true);
    } else if (action == 'delitem') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + manual);
    } else {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id  + manual, true);
    }

    xmlhttp.send();


}


function exportPdf(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
    
    var cari_alamat = $("#cari_alamat").val();
    var cari_tlp = $("#cari_tlp").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file + '&cari_alamat=' + cari_alamat + '&cari_tlp=' + cari_tlp + '&created_by=' + parameter ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}

function exportExcel(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
    
    var cari_alamat = $("#cari_alamat").val();
    var cari_tlp = $("#cari_tlp").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file + '&cari_alamat=' + cari_alamat + '&cari_tlp=' + cari_tlp + '&created_by=' + parameter ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}

function hideAtNew(str) {

    getJavascript(str);
    $('#export-pdf').hide();
    $('#export-excel').hide();
    $('#deleteAll').hide();
    $('#create').hide();
    $('#edit').hide();
    $('#cancel').hide();
    $('#searchSpan').hide();
    $('#searchButton').hide();
}

function formatDates() {
    var date = new Date();
    var months;
    if (date.getMonth() + 1 >= 0 && date.getMonth() + 1 <= 9) {
        var month2 = date.getMonth() + 1;
        months = '0' + month2;
    } else {
        months = date.getMonth() + 1;
    }
    var dates = (months) + '/' + date.getDate() + '/' + date.getFullYear();

    return dates;
}

function formatDates2() {
    var date = new Date();
    var months;
    if (date.getMonth() + 1 >= 0 && date.getMonth() + 1 <= 9) {
        var month2 = date.getMonth() + 1;
        months = '0' + month2;
    } else {
        months = date.getMonth() + 1;
    }
    var dates = date.getFullYear() + '-' + months + '-' + date.getDate();

    return dates;
}

function toInsertDate(date) {
    var month = date.substring(0, 2);
    var day = date.substring(3, 5);
    var years = date.substring(6, 10);
    var hasil = years + '-' + month + '-' + day;

    return hasil;
}

function showMenuManual(str, name, manual) {
//alert(str);
//alert(name);
//$('#loading').html('<img src="img/ajax-loader.gif">');

    $('#namePage').html(name);
    $('#datatable_example').html('');
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

            getJavascript(str);
            sampleTable();

            $('#startdate').datepicker();
            $('#enddate').datepicker();
            $('#contentTable').html('');
            $('#deleteAll').hide();
            $('#edit').hide();
            $('#cancel').hide();


        }
    }
    xmlhttp.open("GET", "component/content/index2.php?content=" + str + manual, true);
    xmlhttp.send();

    return true;

}