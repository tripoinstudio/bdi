$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        lovNewManual(str, actions, 'sentra', 'select s.tb_sentra_id, p.tb_province_code, p.tb_province_name tb_sentra_name from tb_province p join tb_sentra s on p.tb_province_id = s.tb_sentra_province_id');

    } else if (actions == 'edit' || actions == 'view') {
        lovEdit(str, actions, 'sentra');
    }

});
function saveCetya(str, action) {
    var sentra = $('#lovssentra').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending,'&sentra='+sentra);
    }

}
