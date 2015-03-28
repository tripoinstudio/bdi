$(function () {
    //  alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        lovNew(str, actions, 'province');
    } else if (actions == 'edit' || actions == 'view') {
        lovEdit(str, actions, 'province','true');
    }

});
function saveSentra(str, action) {
    var sentra = $('#lovsprovince').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending,'&sentra='+sentra);
    }

}
