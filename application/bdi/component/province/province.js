$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        lovNew(str, actions, 'country','true');
        

    } else if (actions == 'edit' || actions == 'view') {
        lovEdit(str, actions, 'country','true');

    }

});
function saveProvince(str, action) {
    var country = $('#lovscountry').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending,'&country='+country);
    }

}
