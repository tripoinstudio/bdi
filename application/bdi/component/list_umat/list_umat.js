$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
    $('#create').hide();
    $('#export-pdf').hide();
    $('#export-excel').hide();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);


});
function saveProvince(str, action) {
    var country = $('#lovscountry').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending, '&country=' + country);
    }

}


function searchListUmat() {

    var address = $('#lovsaddress').val();

    $.ajax({
        type: 'get',
        url: 'actions.php',
        data: 'content=list_umat&action=search&address=' + address,
        //	dataType	: 'json',
        success: function (data) {
            // alert(data);

            document.getElementById("tableItem").innerHTML = data;
            sampleTable();
            
            $('#export-pdf').show();
            $('#export-excel').show();

//                getJavascript('list_umat');
//                $('#deleteAll').hide();
//                $('#edit').hide();
//                $('#searchSpan').hide();
//                $('#cancel').hide();
//                $('#searchButton').hide();
            return true;
        }

    });

    //  alert(sentraid);
}

function exportPdf(type, filename) {
    var exports = type;
    var file = filename;
    var lovsaddress = $("#lovsaddress").val();
    var newURL = 'export.php?export=' + exports + '&file=' + file + '&lovsaddress=' + lovsaddress;
    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }


    return false;


}