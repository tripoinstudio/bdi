$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        //    lovNew(str, actions, 'group');

    } else if (actions == 'edit' || actions == 'view') {
        //     lovEdit(str, actions, 'group');

    }

});
function saveUser(str, action) {


    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending);
    }




}

function exportPdf() {
    var exports = 'pdf';
    var file = 'pdf-country';
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
/*
    var item = '{"item":[';
    for (i = 0; i < jumlahlist; i++) {
        var no = i + 1;
        var coma;
        
        var code = $("#country_code" + no).val();
        var name = $("#country_name" + no).val();
        
        if(no == jumlahlist){
            coma = '';
        } else {
            coma = ',';
        }
        
        item = item + '{';
        item = item + '"code":"'+code + '",';
        item = item + '"name":"'+name + '"';
        item = item + '}'+coma;

    }
    item = item + ']}';
*/

    var newURL = 'export.php?export=' + exports + '&file=' + file+'&type='+searchtype+'&field='+searchfield;
    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }


    return false;


}

function exportExcel() {
    var exports = 'excel';
    var file = 'excel-country';
     var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file+'&type='+searchtype+'&field='+searchfield;
    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }

    return false;

}