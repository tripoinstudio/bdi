$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
            lovNew(str, actions, 'country');
			lovNew(str, actions, 'province');
    } else if (actions == 'edit' || actions == 'view') {
        //     lovEdit(str, actions, 'group');

    }

});
function saveUser(str, action) {
	var country = $('#lovscountry').val();
	var province = $('#lovsprovince').val();
	
    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending,'&country='+country+'&province='+province);
    }

}
