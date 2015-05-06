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

function marriageStatus() {
    var status = $('input[id="lovsstatus"]:checked').val();
//	alert(status);
    if (status == 1 || status == 3) {
        $('#group_marriage_status').show();
    } else {
        $('#group_marriage_status').hide();
    }
}

function tdpStatus() {
    var status = $('input[id="me_gohifu"]:checked').val();
//	alert(status);
    if (status == 1 || status == 3) {
        $('#group-tdp').show();
    } else {
        $('#group-tdp').hide();
    }
}
function saveDataUmat(str, action) {
//    var gender = $('#gender').val();
//    var upacarashosu = $('#upacarashosu').val();
//    var lovsstatus = $('#lovsstatus').val();

    //DATA UMAT
    var nama_sekarang = $('#nama_sekarang').val();
    var nama_panggilan = $('#nama_panggilan').val();
    var place_of_birth = $('#place_of_birth').val();
    var birth_date = $('#birth_date').val();
    var gender = $('input[id="gender"]:checked').val();
    var country = $('#lovsstatuscountry').val();
    var job = $('#job').val();
    var no_iden = $('#no_iden').val();
    var alamat_ktp = $('#alamat_ktp').val();

    var alamat_tinggal = $('#alamat_tinggal').val();
    var telp_rumah = $('#first_telp_rumah').val()+'-'+$('#last_telp_rumah').val();

    var alamat_tinggal1 = $('#alamat_tinggal1').val();
    var telp_rumah1 = $('#first_telp_rumah1').val()+'-'+$('#last_telp_rumah1').val();
    var tgl_prbh_almt1 = $('#tgl_prbh_almt1').val();

    var alamat_tinggal2 = $('#alamat_tinggal2').val();
    var telp_rumah2 = $('#first_telp_rumah2').val()+'-'+$('#last_telp_rumah2').val();
    var tgl_prbh_almt2 = $('#tgl_prbh_almt2').val();

    var no_handphone = $('#no_handphone').val();
    var email = $('#email').val();
    
    var dataUmat = '&nama_sekarang=' + nama_sekarang + '&nama_panggilan=' + nama_panggilan+ '&place_of_birth=' + place_of_birth
    + '&birth_date=' + birth_date+ '&gender=' + gender+ '&country=' + country
    + '&job=' + job+ '&no_iden=' + no_iden+ '&alamat_ktp=' + alamat_ktp
    + '&alamat_tinggal=' + alamat_tinggal+ '&telp_rumah=' + telp_rumah+ '&alamat_tinggal1=' + alamat_tinggal1
    + '&telp_rumah1=' + telp_rumah1+ '&tgl_prbh_almt1=' + tgl_prbh_almt1+ '&alamat_tinggal2=' + alamat_tinggal2
    + '&telp_rumah2=' + telp_rumah2+ '&tgl_prbh_almt2=' + tgl_prbh_almt2
    + '&no_handphone=' + no_handphone+ '&email=' + email;


    //DATA KEUMATAN
    var marriage_status = $('#lovsstatus').val();
    var upacarashosu = $('#upacarashosu').val();
    var nichiren_shosu_year = $('#nichiren_shosu_year').val();
    var nichiren_shosu_place = $('#nichiren_shosu_place').val();
    var nichiren_shosu_leader = $('#nichiren_shosu_leader').val();
    var gojukai_date = $('#gojukai_date').val();
    var okataki_gohozon = $('#okataki_gohozon').val();
    var omamori_gohozon = $('#omamori_gohozon').val();
    var tokubetsu_gohozon = $('#tokubetsu_gohozon').val();
    var kankai_date = $('#kankai_date').val();
    var me_gohifu = $('#me_gohifu').val();
    var t_tahun = $('#t_tahun').val();
    var t_penyakit = $('#t_penyakit').val();
    
    var dataKeumatan = '&marriage_status=' + marriage_status + '&upacarashosu=' + upacarashosu
    + '&nichiren_shosu_year=' + nichiren_shosu_year+ '&nichiren_shosu_place=' + nichiren_shosu_place+ '&nichiren_shosu_leader=' + nichiren_shosu_leader
    + '&gojukai_date=' + gojukai_date+ '&okataki_gohozon=' + okataki_gohozon+ '&omamori_gohozon=' + omamori_gohozon
    + '&tokubetsu_gohozon=' + tokubetsu_gohozon+ '&kankai_date=' + kankai_date+ '&me_gohifu=' + me_gohifu
    + '&t_tahun=' + t_tahun+ '&t_penyakit=' + t_penyakit;

    //DATA PEMBAGIAN DAERAH
    var lovsprovince = $('#lovsprovince').val();
    var lovssentra = $('#lovssentra').val();
    var lovsdistrik = $('#lovsdistrik').val();
    var lovscetya = $('#lovscetya').val();
    var lovsdharmasala = $('#lovsdharmasala').val();
    
    var dataPembagianDaerah = '&lovsprovince=' + lovsprovince + '&lovssentra=' + lovssentra
    + '&lovsdistrik=' + lovsdistrik+ '&lovscetya=' + lovscetya+ '&lovsdharmasala=' + lovsdharmasala;
    

    //DATA KEAKTIFAN
    var dtng_ke = $('input[id="dtng_ke"]:checked').val();
    var danaprmt = $('input[id="danaprmt"]:checked').val();
    var tngjwb = $('#tngjwb').val();

    var dataAktif = '&dtng_ke=' + dtng_ke + '&danaprmt=' + danaprmt+ '&tngjwb=' + tngjwb;
    //DATA KELUARGA
    var lovNameTr = $('#lovNameTr').val();
    

    var countername = $('#countername').val();
    var sendingKeluarga = '{"item":[';
//    sending = '{"code":"' + code + '","name":"' + name + '","item":[';
    for (var i = 0; i < countername; i++) {
        var nameKel = $('#nameKel' + i).val();
        var nameHub = $('#nameHub' + i).val();
        var coma;
        var s = parseFloat(i) + 1;
        if (s == $("#countername").val()) {
            coma = '';
        } else {
            coma = ',';
        }
        sendingKeluarga = sendingKeluarga + '{"nameKel":"' + nameKel + '","nameHub":"' + nameHub + '"}' + coma;
//    sendingKeluarga = '&nameKel=' + nameKel + '&lovNameTr2=' + lovNameTr2;
    }
    sendingKeluarga = sendingKeluarga + ']}';
    var lovNameTr2 = $('#lovNameTr2').val();
    var nameKels = $('#nameKels').val();
    var nameHubs = $('#nameHubs').val();
var dataKel = '&lovNameTr=' + lovNameTr + '&lovNameTr2=' + lovNameTr2
        + '&nameKels=' + nameKels+ '&nameHubs=' + nameHubs+ '&sendingKeluarga=' + sendingKeluarga;
    

    var required = validationRequired();
    var sending = beforeSave(action);

    var addresssend = '';

    if (action == 'update') {
        var adress1 = $('#adresseditid1').val();
        var adress2 = $('#adresseditid2').val();

        addresssend = '&adress1=' + adress1 + '&adress2=' + adress2;
    }
    var parameter = dataUmat+dataKeumatan+dataPembagianDaerah+dataAktif+dataKel;

//    var parameter = addresssend + '&gender=' + gender + '&upacarashosu=' + upacarashosu + '&mrstatus=' + lovsstatus
//            + '&shosu_year=' + toInsertDate(shosu_year) + '&birth_date=' + toInsertDate(birth_date) + '&gojukai_date=' + toInsertDate(gojukai_date) + '&gohozon_accept_date=' + toInsertDate(gohozon_accept_date) + '&kankai_date=' + toInsertDate(kankai_date)
//            + '&mobile1=' + mobile1 + '&jalan1=' + jalan1 + '&no1=' + no1 + '&kelurahan1=' + kelurahan1 + '&kecamatan1=' + kecamatan1 + '&city1=' + city1 + '&province1=' + province1
//            + '&mobile2=' + mobile2 + '&jalan2=' + jalan2 + '&no2=' + no2 + '&kelurahan2=' + kelurahan2 + '&kecamatan2=' + kecamatan2 + '&city2=' + city2 + '&province2=' + province2
//            ;

//    alert(upacarashosu+gender);
    //  alert(toInsertDate(birth_date));
    alert(parameter);
    if (required == "nulls") {

    } else {
       // prosesSave(str, action, sending, parameter);
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
                frma = frma + '<option value="' + items.tb_data_umat_id + '"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';

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
                frma = frma + '<option value="' + items.tb_data_umat_id + '"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';

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
        $("#countername").val(0);
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
    frma = frma + '<input type="text"  id="nameHub' + i + '" name="name" placeholder="" class="span3" />';

    frma = frma + '</div>';

    $('#frmItem').append(frma);
$("#countername").val(i);
    return false;

}