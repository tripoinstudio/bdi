$(function () {
    //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();

    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
         $('#create').hide();
	$('#buttonsaveitem').hide();
	$('#createitem').hide();
	$('#table-item').hide();
	selectDaerah(0);

});
function saveDharmasala(str, action) {
var daerah = $('#lovDaerahTr').val();
	var sendings = sendingsaveADM();
	var parameter = '&daerah='+daerah+'&sending='+sendings;
	var required = validationRequired();
	beforeSave(action);
	if (required == "nulls") {
	} else {
		prosesSaveADM(str, action,daerah,parameter);

	}

}
