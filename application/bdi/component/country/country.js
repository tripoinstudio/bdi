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
