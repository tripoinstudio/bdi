$(function () {

//alert('masuk');
    var ipconfig = $('#ipConfig').val();
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    $('#create').hide();
	 $('#export-pdf').show();
	 $('#export-excel').show();
	
if (actions == 'view') {
	 $('#export-pdf').hide();
	 $('#export-excel').hide();
if (actions == 'edit') {
	 $('#export-pdf').hide();
	 $('#export-excel').hide();
	var marriage_status = $('input[id="lovsstatus"]:checked').val();
	
    if (marriage_status == 1 || marriage_status == 3) {
		
        $('#group_marriage_status').show();
    } else {
        $('#group_marriage_status').hide();
        document.getElementById("upacarashosu").checked = true;
    }
	var me_gohifu = $('input[id="me_gohifu"]:checked').val();
//	alert(status);
    if (me_gohifu == 1 || me_gohifu == 3) {
        $('#group-tdp').show();
       
    } else {
        $('#group-tdp').hide();
        $('#t_tahun').val('-');
        $('#t_penyakit').val('-');
    }
	
	var idProvinsi = document.getElementById("idProvinsi");
	var idSentra = document.getElementById("idSentra");
	var idDistrik = document.getElementById("idDistrik");
	var idCetya = document.getElementById("idCetya");
	var idDharmasala = document.getElementById("idDharmasala");
	getSentraLov(idProvinsi,idSentra);
	getDistrikLov(idSentra,idDistrik);
	getCetyaLov(idDistrik,idCetya);
	getDharmasalaLov(idCetya,idDharmasala);
			
/*	var idname1 = document.getElementById("idname1").value;
	var idname2 = document.getElementById("idname2").value;
	selectName(idname1);
    selectNames2(idname2);*/
	
	
	var countername = document.getElementById("countername").value;
	var counternames = document.getElementById("counternames").value;
//	alert(counternames);
	for(i=0; i<countername; i++){
		var no = i+1;
//		selectName(idname1);
//	selectName(idname1);
var idDataUmat = $('#idDataUmat'+no).val();
selectName(no,idDataUmat);
	}
	for(i=0; i<counternames; i++){
		var no = i+1;
//		selectName(idname1);
//	selectName(idname1);
var idDataUmats = $('#idDataUmats'+no).val();
//alert(no);
selectNames2(no,idDataUmats);
	}
} else if (actions == 'new') {
	addName();
	addNames();
	marriageStatus();
	tdpStatus();
	//optionHubungan(null);
}
    
    
    

    $('#birth_date').datepicker({
    //    format: 'yyyy-mm-dd'
	    format: 'dd-mm-yyyy'
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

    $('#t_tahun').datepicker({
        //    format: 'yyyy-mm-dd',
        //   startDate: '-3d'
        format: " yyyy", // Notice the Extra space at the beginning
        viewMode: "years",
        minViewMode: "years"
    });



});

function marriageStatus() {
    var status = $('input[id="lovsstatus"]:checked').val();
	//alert(status);
    if (status == 1) {
		
        $('#group_marriage_status').show();
		upacaraShosu();
    } else {
        $('#group_marriage_status').hide();
	$('#nichiren_shosu_year').val('-');
        $('#nichiren_shosu_place').val('-');
        $('#nichiren_shosu_leader').val('-');
     //   document.getElementById("upacarashosu").checked = true;
    }
}

function upacaraShosu() {
    var status = $('input[id="upacarashosu"]:checked').val();
	//alert(status);
    if (status == 1) {
		
        $('#group_upacarashosu').show();
    } else {
        $('#group_upacarashosu').hide();
	$('#nichiren_shosu_year').val('-');
        $('#nichiren_shosu_place').val('-');
        $('#nichiren_shosu_leader').val('-');
     //   document.getElementById("upacarashosu").checked = true;
    }
}

function tdpStatus() {
    var status = $('input[id="me_gohifu"]:checked').val();
//	alert(status);
    if (status == 1 || status == 3) {
        $('#group-tdp').show();
       
    } else {
        $('#group-tdp').hide();
		$('#t_tahun').val('-');
        $('#t_penyakit').val('-');
        
    }
}
function saveDataUmat(str, action) {
//    var gender = $('#gender').val();
//    var upacarashosu = $('#upacarashosu').val();
//    var lovsstatus = $('#lovsstatus').val();

    //DATA UMAT
	//prosesLoading();
	var umat_code = '';
	var umat_code_id = '';
	var id_name1 = '';
	var id_name2 = '';
	if(action == 'update'){
		umat_code = $('#code_umat').val();
		umat_code_id = $('#code_umat_id').val();
		id_name1 = $('#id_name1').val();
		id_name2 = $('#id_name1').val();
	} else {
		umat_code = '';
		umat_code_id = '';
		id_name1 = '';
		id_name2 = '';
	}
	
	var umat_code_data = '&umat_code_id=' + umat_code_id + '&umat_code=' + umat_code+ '&id_name1=' + id_name1+ '&id_name2=' + id_name2;
	
    var nama_sekarang = $('#nama_sekarang').val();
    var nama_panggilan = $('#nama_panggilan').val();
    var place_of_birth = $('#place_of_birth').val();
    var birth_dates = $('#birth_date').val();
	var birth_date = birth_dates.split("-").reverse().join("-");
    var gender = $('input[id="gender"]:checked').val();
    var country = $('#lovsstatuscountry').val();
    var job = $('#job').val();
    var no_iden = $('#no_iden').val();
    var alamat_ktp = $('#alamat_ktp').val();

    var alamat_tinggal = $('#alamat_tinggal').val();
    var telp_rumah = $('#first_telp_rumah').val('000') + '-' + $('#last_telp_rumah').val('0000000');

    var alamat_tinggal1 = $('#alamat_tinggal1').val();
    var telp_rumah1 = $('#first_telp_rumah1').val('000') + '-' + $('#last_telp_rumah1').val('0000000');
    var tgl_prbh_almt1 = $('#tgl_prbh_almt1').val();

    var alamat_tinggal2 = $('#alamat_tinggal2').val();
    var telp_rumah2 = $('#first_telp_rumah2').val('000') + '-' + $('#last_telp_rumah2').val('0000000');
    var tgl_prbh_almt2 = $('#tgl_prbh_almt2').val();

    var no_handphone = $('#no_handphone').val();
    var email = $('#email').val();

    var dataUmat = '&nama_sekarang=' + nama_sekarang + '&nama_panggilan=' + nama_panggilan + '&place_of_birth=' + place_of_birth
            + '&birth_date=' + birth_date + '&gender=' + gender + '&country=' + country
            + '&job=' + job + '&no_iden=' + no_iden + '&alamat_ktp=' + alamat_ktp
            + '&alamat_tinggal=' + alamat_tinggal + '&telp_rumah=' + telp_rumah 
			//+ '&alamat_tinggal1=' + alamat_tinggal1
            //+ '&telp_rumah1=' + telp_rumah1 + '&tgl_prbh_almt1=' + tgl_prbh_almt1 + '&alamat_tinggal2=' + alamat_tinggal2
        //    + '&telp_rumah2=' + telp_rumah2 + '&tgl_prbh_almt2=' + tgl_prbh_almt2
            + '&no_handphone=' + no_handphone + '&email=' + email;


    //DATA KEUMATAN
    var marriage_status = $('input[id="lovsstatus"]:checked').val();

    var upacarashosu = '';
    var nichiren_shosu_year = '';
    var nichiren_shosu_place = '';
    var nichiren_shosu_leader = '';
    if (marriage_status == 1 || marriage_status == 3) {
        upacarashosu =$('input[id="upacarashosu"]:checked').val();
        nichiren_shosu_year = $('#nichiren_shosu_year').val();
        nichiren_shosu_place = $('#nichiren_shosu_place').val();
        nichiren_shosu_leader = $('#nichiren_shosu_leader').val();
    } else {
      //  upacarashosu = $('input[id="upacarashosu"]:checked').val('-');
        nichiren_shosu_year = $('#nichiren_shosu_year').val('-');
        nichiren_shosu_place = $('#nichiren_shosu_place').val('-');
        nichiren_shosu_leader = $('#nichiren_shosu_leader').val('-');
    }

    var gojukai_date = $('#gojukai_date').val();
    var okataki_gohozon = $('#okataki_gohozon').val('-');
    var omamori_gohozon = $('#omamori_gohozon').val('-');
    var tokubetsu_gohozon = $('#tokubetsu_gohozon').val('-');
    var kankai_date = $('#kankai_date').val('-');
    var me_gohifu = $('input[id="me_gohifu"]:checked').val();
    var t_tahun = '';
    var t_penyakit = '';
    if (me_gohifu == 1) {
        t_tahun = $('#t_tahun').val();
        t_penyakit = $('#t_penyakit').val();
    } else {
        t_tahun = $('#t_tahun').val('-');
        t_penyakit = $('#t_penyakit').val('-');
    }


    var dataKeumatan = '&marriage_status=' + marriage_status + '&upacarashosu=' + upacarashosu
            + '&nichiren_shosu_year=' + nichiren_shosu_year + '&nichiren_shosu_place=' + nichiren_shosu_place + '&nichiren_shosu_leader=' + nichiren_shosu_leader
            + '&gojukai_date=' + gojukai_date + '&okataki_gohozon=' + okataki_gohozon + '&omamori_gohozon=' + omamori_gohozon
            + '&tokubetsu_gohozon=' + tokubetsu_gohozon + '&kankai_date=' + kankai_date + '&me_gohifu=' + me_gohifu
            + '&t_tahun=' + t_tahun + '&t_penyakit=' + t_penyakit;

    //DATA PEMBAGIAN DAERAH
    var lovsprovince = $('#lovsprovince').val();
    var lovssentra = $('#lovssentra').val();
    var lovsdistrik = $('#lovsdistrik').val();
    var lovscetya = $('#lovscetya').val();
    var lovsdharmasala = $('#lovsdharmasala').val();

    var dataPembagianDaerah = '&lovsprovince=' + lovsprovince + '&lovssentra=' + lovssentra
            + '&lovsdistrik=' + lovsdistrik + '&lovscetya=' + lovscetya + '&lovsdharmasala=' + lovsdharmasala;


    //DATA KEAKTIFAN
    var dtng_ke = $('input[id="dtng_ke"]:checked').val();
    var danaprmt = $('input[id="danaprmt"]:checked').val();
    var tngjwb = $('#tngjwb').val('-');

    var dataAktif = '&dtng_ke=' + dtng_ke + '&danaprmt=' + danaprmt + '&tngjwb=' + tngjwb;
    //DATA KELUARGA
    var idname1 = $('#idname1').val();
	 var idname2 = $('#idname2').val();


    var countername = $('#countername').val();
    var sendingKeluarga = '{"listitemkel":[';
//    sending = '{"code":"' + code + '","name":"' + name + '","item":[';
    for (var i = 0; i < countername; i++) {
        var s = parseFloat(i) + 1;
        var nameKel = $('#nameKel' + s).val();
        var nameHub = $('#nameHub' + s).val();
		var nameIdKel = $('#nameIdKel' + s).val();
        var coma;
        
        if (s == $("#countername").val()) {
            coma = '';
        } else {
            coma = ',';
        }
        sendingKeluarga = sendingKeluarga + '{"nameIdKel":"' + nameIdKel + '","nameKel":"' + nameKel + '","nameHub":"' + nameHub + '"}' + coma;
//    sendingKeluarga = '&nameKel=' + nameKel + '&lovNameTr2=' + lovNameTr2;
    }
    sendingKeluarga = sendingKeluarga + ']}';
	
	var counternames = $('#counternames').val();
	var sendingKeluargas = '{"listitemkels":[';
//    sending = '{"code":"' + code + '","name":"' + name + '","item":[';
    for (var i = 0; i < counternames; i++) {
        var s = parseFloat(i) + 1;
        var nameKels = $('#nameKels' + s).val();
        var nameHubs = $('#nameHubs' + s).val();
		var nameIdKels = $('#nameIdKels' + s).val();
        var coma;
        
        if (s == $("#counternames").val()) {
            coma = '';
        } else {
            coma = ',';
        }
        sendingKeluargas = sendingKeluargas + '{"nameIdKels":"' + nameIdKels + '","nameKels":"' + nameKels + '","nameHubs":"' + nameHubs + '"}' + coma;
//    sendingKeluarga = '&nameKel=' + nameKel + '&lovNameTr2=' + lovNameTr2;
    }
    sendingKeluargas = sendingKeluargas + ']}';
    var lovNameTr2 = $('#lovNameTr2').val();
//    var nameKels = $('#nameKels').val();
//	var nameIdKels = $('#nameIdKels').val();
 //   var nameHubs = $('#nameHubs').val();
  //  var dataKel = '&lovNameTr=' + lovNameTr + '&lovNameTr2=' + lovNameTr2
 //           + '&nameIdKels=' + nameIdKels + '&nameKels=' + nameKels + '&nameHubs=' + nameHubs + '&sendingKeluarga=' + sendingKeluarga;

  var dataKel = '&idname1=' + idname1 + '&idname2=' + idname2
            + '&sendingKeluargas=' + sendingKeluargas+ '&sendingKeluarga=' + sendingKeluarga;
    var required = validationRequired();
    var sending = beforeSave(action);

    var addresssend = '';

    if (action == 'update') {
        var adress1 = $('#adresseditid1').val();
        var adress2 = $('#adresseditid2').val();

        addresssend = '&adress1=' + adress1 + '&adress2=' + adress2;
    }
    var parameter = umat_code_data+dataUmat + dataKeumatan + dataPembagianDaerah + dataAktif + dataKel;

//    var parameter = addresssend + '&gender=' + gender + '&upacarashosu=' + upacarashosu + '&mrstatus=' + lovsstatus
//            + '&shosu_year=' + toInsertDate(shosu_year) + '&birth_date=' + toInsertDate(birth_date) + '&gojukai_date=' + toInsertDate(gojukai_date) + '&gohozon_accept_date=' + toInsertDate(gohozon_accept_date) + '&kankai_date=' + toInsertDate(kankai_date)
//            + '&mobile1=' + mobile1 + '&jalan1=' + jalan1 + '&no1=' + no1 + '&kelurahan1=' + kelurahan1 + '&kecamatan1=' + kecamatan1 + '&city1=' + city1 + '&province1=' + province1
//            + '&mobile2=' + mobile2 + '&jalan2=' + jalan2 + '&no2=' + no2 + '&kelurahan2=' + kelurahan2 + '&kecamatan2=' + kecamatan2 + '&city2=' + city2 + '&province2=' + province2
//            ;

//    alert(upacarashosu+gender);
    //  alert(toInsertDate(birth_date));
  //  alert(parameter);
    if (required == "nulls") {
alert("Mohon Isi Field yg Kosong");
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


function selectName(i,id) {
//	alert(id);
    var str = 'data_umat';
    var frma = '<select id="nameKel'+i+'" class="span3 chosen" data-placeholder="Choose a Name" tabindex="1">';
	frma = frma + '<option value="0"><b>Select ...</b></option>';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=lovname',
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
				if(id == items.tb_data_umat_id){
				frma = frma + '<option value="' + items.tb_data_umat_id + '" selected="selected"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';	
				} else {
                frma = frma + '<option value="' + items.tb_data_umat_id + '"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';
				}
            }
            frma = frma + '</select>';
            $('#lovName'+i).html(frma);
            $('#nameKel'+i).chosen();
        }


    });
}

function selectNames2(i,id) {
	//alert(id);
    var str = 'data_umat';
    var frma = '<select id="nameKels'+i+'" class="span3 chosen" data-placeholder="Choose a Name" tabindex="1">';
    frma = frma + '<option value="0"><b>Select ...</b></option>';
	$.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=lovname',
        success: function (result) {
//alert(result)
//alert(result);
            var jsons = JSON.parse(result);
			
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
              //  frma = frma + '<option value="' + items.tb_data_umat_id + '"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';
if(id == items.tb_data_umat_id){
				frma = frma + '<option value="' + items.tb_data_umat_id + '" selected="selected"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';	
				} else {
                frma = frma + '<option value="' + items.tb_data_umat_id + '"><b>' + items.tb_data_umat_nama_ktp + '</b></option>';
				}
            }
            frma = frma + '</select>';
            $('#lovNames'+i).html(frma);
            $('#nameKels'+i).chosen();
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
	

    frma = frma + '<input type="hidden"  id="nameIdKel' + i + '" value="0" name="name" placeholder="" class="span3" /><div class="control-group span3"  id="lovName'+i+'"></div>';

    frma = frma + '<label class="control-label span2">Hubungan ';
    frma = frma + ' </label>';
    //  frma = frma + '<input type="text"  id="nameHub' + i + '" name="name" placeholder="" class="span3" />';
    frma = frma + '<select id="nameHub' + i + '" class="input-large m-wrap" data-placeholder="Choose a Name" tabindex="1">';
    frma = frma + '</select>';

    frma = frma + '</div>';

    $('#frmItem').append(frma);
    $("#countername").val(i);
    optionHubungan(i,1);
	selectName(i,0);
   
    return false;

}

function addNames() {
    var i = $("#counternames").val();
    // alert(i);
    if (i == '' || i == null) {
        $("#counternames").val(0);
        i = 0;
        //   alert(i);
    }

    i = parseFloat(i) + 1;

    var frma = '';

    frma = frma + '<div class="form-row control-group row-fluid">';
    frma = frma + '<label class="control-label span1">Nama ';
    frma = frma + ' </label>';
	

    frma = frma + '<input type="hidden"  id="nameIdKels' + i + '" value="0" name="name" placeholder="" class="span3" /><div class="control-group span3" id="lovNames'+i+'"></div>';

    frma = frma + '<label class="control-label span2">Hubungan ';
    frma = frma + ' </label>';
    //  frma = frma + '<input type="text"  id="nameHub' + i + '" name="name" placeholder="" class="span3" />';
    frma = frma + '<select id="nameHubs' + i + '" class="input-large m-wrap" data-placeholder="Choose a Name" tabindex="1">';
    frma = frma + '</select>';

    frma = frma + '</div>';

    $('#frmItems').append(frma);
    $("#counternames").val(i);
    optionHubungan(i,2);
	 selectNames2(i,0);
    return false;

}
function optionHubungan(i,type) {
    var frma = '';
	frma = frma + '<option value="0">Select ...</option>';
    frma = frma + '<option value="AYAH">AYAH</option>';
    frma = frma + '<option value="IBU">IBU</option>';
    frma = frma + '<option value="ANAK">ANAK</option>';
    frma = frma + '<option value="KAKAK">KAKAK</option>';
    frma = frma + '<option value="ADIK">ADIK</option>';
    frma = frma + '<option value="KAKEK">KAKEK</option>';
    frma = frma + '<option value="NENEK">NENEK</option>';
    frma = frma + '<option value="CUCU">CUCU</option>';
    frma = frma + '<option value="MERTUA">MERTUA</option>';
    frma = frma + '<option value="MENANTU">MENANTU</option>';
    frma = frma + '<option value="PAMAN">PAMAN</option>';
    frma = frma + '<option value="TANTE">TANTE</option>';
    frma = frma + '<option value="KEPONAKAN">KEPONAKAN</option>';
    frma = frma + '<option value="SEPUPU">SEPUPU</option>';
	frma = frma + '<option value="LAIN-LAIN">LAIN-LAIN</option>';
    if (type == 2) {
        $("#nameHubs"+i).html(frma);

    } else {
        $("#nameHub" + i).html(frma);
    }


}

function hideDatepicker(event,obj){
	var keycode = (event.keyCode ? event.keyCode : event.which);
	//alert(keycode);
	if(keycode == '9'){
	//	alert(obj);
	//	alert('You pressed a "TAB" key in textbox');
		$(obj).datepicker('hide');
	}
	//
}

function getSentraLov(obj,idR) {
    //alert(obj);
    var id;
  if(obj == null){
	  id = obj;
  } else {
	  id = obj.value;
  }
    var str = 'data_umat';
    var frma = '<select id="lovssentra" class="input-large m-wrap" onchange="getDistrikLov(this,0);">';
    frma = frma + '<option value="0">Select ...</option>';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=sentralov&id=' + id,
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
				
				if(idR.value == items.tb_sentra_id){
					frma = frma + '<option value="' + items.tb_sentra_id + '" selected="selected"><b>' + items.tb_sentra_name + '</b></option>';
				} else {
                frma = frma + '<option value="' + items.tb_sentra_id + '"><b>' + items.tb_sentra_name + '</b></option>';
				}
            }
            frma = frma + '</select>';
            $('#sentraLov').html(frma);
            //  $('#lovNameTr2').chosen();
			if(idR == 0){
			getDistrikLov(null);
			getCetyaLov(null);
			getDharmasalaLov(null);
			}
			
        }


    });
}

function getDistrikLov(obj,idR) {
  //  alert(obj);
  var id;
  if(obj == null){
	  id = obj;
  } else {
	  id = obj.value;
  }
   // alert(id);
	
    var str = 'data_umat';
    var frma = '<select id="lovsdistrik" class="input-large m-wrap" onchange="getCetyaLov(this,0);">';
    frma = frma + '<option value="0">Select ...</option>';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=distriklov&id=' + id,
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
				
				if(idR.value == items.tb_distrik_id){
					 frma = frma + '<option value="' + items.tb_distrik_id + '" selected="selected"><b>' + items.tb_distrik_name + '</b></option>';
				} else {
                frma = frma + '<option value="' + items.tb_distrik_id + '"><b>' + items.tb_distrik_name + '</b></option>';
				}
            }
            frma = frma + '</select>';
            $('#distrikLov').html(frma);
            //  $('#lovNameTr2').chosen();
			var lovsdistrik = $("#lovDistrikId").val();
			if(idR == 0){
			getCetyaLov(null);
			getDharmasalaLov(null);
			}
        }


    });
}

function getCetyaLov(obj,idR) {
//    alert(obj.value);
    var id;
  if(obj == null){
	  id = obj;
  } else {
	  id = obj.value;
  }
    var str = 'data_umat';
    var frma = '<select id="lovscetya" class="input-large m-wrap" onchange="getDharmasalaLov(this,0);">';
    frma = frma + '<option value="0">Select ...</option>';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=cetyalov&id=' + id,
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
				
				if(idR.value == items.tb_cetya_id){
				 frma = frma + '<option value="' + items.tb_cetya_id + '" selected="selected"><b>' + items.tb_cetya_name + '</b></option>';
				} else {
                frma = frma + '<option value="' + items.tb_cetya_id + '"><b>' + items.tb_cetya_name + '</b></option>';
				}
            }
            frma = frma + '</select>';
            $('#cetyaLov').html(frma);
            //  $('#lovNameTr2').chosen();
			if(idR == 0){
			getDharmasalaLov(null);
			}
        }


    });
}

function getDharmasalaLov(obj,idR) {
//    alert(obj.value);
    var id;
  if(obj == null){
	  id = obj;
  } else {
	  id = obj.value;
  }
    var str = 'data_umat';
    var frma = '<select id="lovsdharmasala" class="input-large m-wrap">';
    frma = frma + '<option value="0">Select ...</option>';
    $.ajax({
        type: 'get',
        url: 'controller.php',
        data: 'content=' + str + '&action=dharmasalalov&id=' + id,
        success: function (result) {

//alert(result);
            var jsons = JSON.parse(result);
            for (var n = 0; n < jsons.length; n++) {
                var items = jsons[n];
				if(idR.value == items.tb_dharmasala_id){
				 frma = frma + '<option value="' + items.tb_dharmasala_id + '" selected="selected"><b>' + items.tb_dharmasala_name + '</b></option>';
				} else {
                frma = frma + '<option value="' + items.tb_dharmasala_id + '"><b>' + items.tb_dharmasala_name + '</b></option>';
				}
            }
            frma = frma + '</select>';
            $('#dharmasalaLov').html(frma);
            //  $('#lovNameTr2').chosen();
        }


    });
}	
function exportPdfListUmat(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
    
    var cari_alamat = $("#cari_alamat").val();
    var cari_tlp = $("#cari_tlp").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}

function exportExcelListUmat(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
    
    var cari_alamat = $("#cari_alamat").val();
    var cari_tlp = $("#cari_tlp").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}

function exportPdfUmat(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
    
    var cari_alamat = $("#cari_alamat").val();
    var cari_tlp = $("#cari_tlp").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file+parameter ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}

function exportExcelUmat(type, filename, parameter) {
    var exports = type;
    var file = filename;
    var jumlahlist = $("#jumlahlist").val();
    var searchtype = $("#searchtype").val();
    var searchfield = $("#searchfield").val();
    
    var cari_alamat = $("#cari_alamat").val();
    var cari_tlp = $("#cari_tlp").val();

    var newURL = 'export.php?export=' + exports + '&file=' + file+parameter ;

    newwindow = window.open(newURL);
    if (window.focus) {
        newwindow.focus();
    }
    return false;
}
