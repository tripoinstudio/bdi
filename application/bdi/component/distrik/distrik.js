$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
  $('#create').hide();
  $('#export-pdf').hide();
	 $('#export-excel').hide();
	$('#buttonsaveitem').hide();
	$('#createitem').hide();
	$('#table-item').hide();
	selectDaerah(0);

});
function saveDistrik(str, action) {
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
