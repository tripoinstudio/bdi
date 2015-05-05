$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        lovNewManual(str, actions, 'sentra', 'select p.tb_province_id, p.tb_province_code, p.tb_province_name tb_sentra_name from tb_province p join tb_sentra s on p.tb_province_id = s.tb_sentra_province_id');
        lovNew(str, actions, 'cetya');

    } else if (actions == 'edit' || actions == 'view') {
        lovNewManual(str, actions, 'sentra', 'select p.tb_province_id, p.tb_province_code, p.tb_province_name tb_sentra_name from tb_province p join tb_sentra s on p.tb_province_id = s.tb_sentra_province_id');
        lovEdit(str, actions, 'cetya');

    }

});
function saveCetya(str, action) {

    var dharmasala = $('#lovscetya').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending, '&cetya=' + dharmasala);
    }

}

function setCetya() {
    var sentraid = $('#lovssentra').val();
    var name = $('#name').val();
    var remarks = $('#remarks').val();
    $.ajax({
        type: 'get',
        url: 'component/content/index2.php',
        data: 'content=dharmasala&action=new&idlov=' + sentraid,
        //	dataType	: 'json',
        success: function (data) {
            document.getElementById("txtHint").innerHTML = data;
            document.getElementById("lovssentra").value = sentraid;
            document.getElementById("name").value = name;
            document.getElementById("remarks").value = remarks;

            hideAtNew('dharmasala');
        }

    });

    //  alert(sentraid);
}