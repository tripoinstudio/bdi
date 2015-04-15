$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);

    $('#birth_date').datepicker({
        format: 'yyyy-mm-dd',
        //   startDate: '-3d'
    });

    $('#nichiren_shosu_year').val(formatDates2());
    $('#nichiren_shosu_year').datepicker({
        format: 'yyyy-mm-dd',
        //   startDate: '-3d'
    });

    $('#gojukai_date').val(formatDates2());
    $('#gojukai_date').datepicker({
        format: 'yyyy-mm-dd',
        //   startDate: '-3d'
    });

    $('#gohozon_accept_date').val(formatDates2());
    $('#gohozon_accept_date').datepicker({
        format: 'yyyy-mm-dd',
        //   startDate: '-3d'
    });

    $('#kankai_date').val(formatDates2());
    $('#kankai_date').datepicker({
        format: 'yyyy-mm-dd',
        //   startDate: '-3d'
    });

});
function saveDataUmat(str, action) {
    var gender = $('#gender').val();
    var upacarashosu = $('#upacarashosu').val();
    var lovsstatus = $('#lovsstatus').val();





    //address1
    var jalan1 = $('#jalan1').val();
    var no1 = $('#no1').val();
    var kelurahan1 = $('#kelurahan1').val();
    var city1 = $('#city1').val();
    var province1 = $('#province1').val();
    var mobile1 = $('#mobile1').val();

    //address2
    var jalan2 = $('#jalan2').val();
    var no2 = $('#no2').val();
    var kelurahan2 = $('#kelurahan2').val();
    var city2 = $('#city2').val();
    var province2 = $('#province2').val();
    var mobile2 = $('#mobile2').val();

    var shosu_year = $('#nichiren_shosu_year').val();
    var birth_date = $('#birth_date').val();
    var gojukai_date = $('#gojukai_date').val();
    var gohozon_accept_date = $('#gohozon_accept_date').val();
    var kankai_date = $('#kankai_date').val();

    var required = validationRequired();
    var sending = beforeSave(action);

    var parameter = '&gender=' + gender + '&upacarashosu=' + upacarashosu+ '&mrstatus=' + lovsstatus
            + '&shosu_year=' + toInsertDate(shosu_year) + '&birth_date=' + toInsertDate(birth_date) + '&gojukai_date=' + toInsertDate(gojukai_date) + '&gohozon_accept_date=' + toInsertDate(gohozon_accept_date) + '&kankai_date=' + toInsertDate(kankai_date)
            + '&mobile1=' + mobile1 + '&jalan1=' + jalan1 + '&no1=' + no1 + '&kelurahan1=' + kelurahan1 + '&city1=' + city1 + '&province1=' + province1
            + '&mobile2=' + mobile2 + '&jalan2=' + jalan2 + '&no2=' + no2 + '&kelurahan2=' + kelurahan2 + '&city2=' + city2 + '&province2=' + province2
            ;

//    alert(upacarashosu+gender);
    //  alert(toInsertDate(birth_date));
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending, parameter);
    }

}
