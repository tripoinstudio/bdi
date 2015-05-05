$(function () {
    //   alert("ipconfig");
//    http://localhost:811/bdi/component/content/
   // showMenuManual('personal_identity','Data Umat','&action=new');
    
//    window.location.replace("component/content/index2.php?content=personal_identity&action=new");
    
    var ipconfig = $('#ipConfig').val();
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    $('#create').hide();
    
    addName();
    selectName();
    selectNames2();
    $('#birth_date').datepicker({
        format: 'yyyy-mm-dd'
                //   startDate: '-3d'
    });

    //   $('#nichiren_shosu_year').val(formatDates2());
    $('#nichiren_shosu_year').datepicker({
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });

//    $('#gojukai_date').val(formatDates2());
    $('#gojukai_date').datepicker({
        // format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });

//    $('#gohozon_accept_date').val(formatDates2());
    $('#gohozon_accept_date').datepicker({
        //  format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });

//    $('#kankai_date').val(formatDates2());
    $('#kankai_date').datepicker({
        //    format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });
    
     $('#okataki_gohozon').datepicker({
        //    format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });
    
     $('#omamori_gohozon').datepicker({
        //    format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });
    
     $('#tokubetsu_gohozon').datepicker({
        //    format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });
    
    $('#t_penyakit').datepicker({
        //    format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
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
    var kecamatan1 = $('#kecamatan1').val();
    var city1 = $('#lovscity1').val();
    var province1 = $('#lovsprovince1').val();
    var mobile1 = $('#mobile1').val();

    //address2
    var jalan2 = $('#jalan2').val();
    var no2 = $('#no2').val();
    var kelurahan2 = $('#kelurahan2').val();
    var kecamatan2 = $('#kecamatan2').val();
    var city2 = $('#lovscity2').val();
    var province2 = $('#lovsprovince2').val();
    var mobile2 = $('#mobile2').val();

    var shosu_year = $('#nichiren_shosu_year').val();
    var birth_date = $('#birth_date').val();
    var gojukai_date = $('#gojukai_date').val();
    var gohozon_accept_date = $('#gohozon_accept_date').val();
    var kankai_date = $('#kankai_date').val();

    var required = validationRequired();
    var sending = beforeSave(action);

    var addresssend = '';

    if (action == 'update') {
        var adress1 = $('#adresseditid1').val();
        var adress2 = $('#adresseditid2').val();

        addresssend = '&adress1=' + adress1 + '&adress2=' + adress2;
    }

    var parameter = addresssend + '&gender=' + gender + '&upacarashosu=' + upacarashosu + '&mrstatus=' + lovsstatus
            + '&shosu_year=' + toInsertDate(shosu_year) + '&birth_date=' + toInsertDate(birth_date) + '&gojukai_date=' + toInsertDate(gojukai_date) + '&gohozon_accept_date=' + toInsertDate(gohozon_accept_date) + '&kankai_date=' + toInsertDate(kankai_date)
            + '&mobile1=' + mobile1 + '&jalan1=' + jalan1 + '&no1=' + no1 + '&kelurahan1=' + kelurahan1 + '&kecamatan1=' + kecamatan1 + '&city1=' + city1 + '&province1=' + province1
            + '&mobile2=' + mobile2 + '&jalan2=' + jalan2 + '&no2=' + no2 + '&kelurahan2=' + kelurahan2 + '&kecamatan2=' + kecamatan2 + '&city2=' + city2 + '&province2=' + province2
            ;

//    alert(upacarashosu+gender);
    //  alert(toInsertDate(birth_date));
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending, parameter);
    }

}


function setCodeUmat() {
    var province1 = $('#lovsprovince1').val();
    $.ajax({
        type: 'get',
        url: 'actions.php',
        data: 'content=province&action=lovname&id=' + province1,
        //	dataType	: 'json',
        success: function (data) {
            alert(data);
            var tambah;
            var tesa = parseInt(data);
            if (data == '') {
                tambah = '00001';
            } else {
                tambah = parseFloat(tesa) + 1;
            }

            var code = '';
            //   alert(tambah.toString());
            //   alert(tambah.toString().length);
            if (tambah.toString().length == 1) {
                code = '0000' + tambah;
            } else if (tambah.toString().length == 2) {
                code = '000' + tambah;
            } else if (tambah.toString().length == 3) {
                code = '00' + tambah;
            } else if (tambah.toString().length == 4) {
                code = '0' + tambah;
            } else {
                code = tambah;
            }
            $('#code').val(code);
        }

    });

}


function selectName() {
    var str = 'data_umat';
    var frma = '<select id="lovNameTr" class="span6 chosen" data-placeholder="Choose a Name" tabindex="1">';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=lovname',
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
                frma = frma + '<option value="' + items.tb_personal_identity_id + '"><b>' + items.tb_personal_identity_name + '</b></option>';

            }
            frma = frma + '</select>';
            $('#lovName').html(frma);
            $('.chosen').chosen();
        }


    });
}

function selectNames2() {
    var str = 'data_umat';
    var frma = '<select id="lovNameTr2" class="span6 chosen" data-placeholder="Choose a Name" tabindex="1">';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=lovname',
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
                frma = frma + '<option value="' + items.tb_personal_identity_id + '"><b>' + items.tb_personal_identity_name + '</b></option>';

            }
            frma = frma + '</select>';
            $('#lovNames').html(frma);
            $('#lovNameTr2').chosen();
        }


    });
}

function addName() {
    var i = $("#countername").val();
    // alert(i);
    if (i == '' || i == null) {
        $("#counter").val(0);
        i = 0;
        //   alert(i);
    }

    i = parseFloat(i) + 1;

    var frma = '';

    frma = frma + '<div class="form-row control-group row-fluid">';
    frma = frma + '<label class="control-label span1">Nama ';
    frma = frma + ' </label>';

    frma = frma + '<input type="text"  id="nameKel' + i + '" name="name" placeholder="" class="span3" />';

    frma = frma + '<label class="control-label span2">Hubungan ';
    frma = frma + ' </label>';
    frma = frma + '<input type="text"  id="hubungan' + i + '" name="name" placeholder="" class="span3" />';

    frma = frma + '</div>';

    $('#frmItem').append(frma);

    return false;

}