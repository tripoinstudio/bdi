$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        lovNew(str, actions, 'group');
		$('#lovwithlabelprovince').hide();
		var group = "";
		$( "#lovsgroup" ).change(function () {
			$( "#lovsgroup option:selected" ).each(function() {
				group = $( this ).text();
			});
			if(group == 'sekda')
				$('#lovwithlabelprovince').show();
			else
				$('#lovwithlabelprovince').hide();
		}).change();		
    } else if (actions == 'edit' || actions == 'view') {
        lovEdit(str, actions, 'group');
	// alert("masuk sini");
	//	$('#lovwithlabelprovince').hide();
	
		sekdaChange();
    }

});

function sekdaChange(){
	var group = $('#lovsgroup').val();
//	alert(group);
	if(group == 4){
		$('#lovwithlabelprovince').show();
	} else {
		$('#lovwithlabelprovince').hide();
		
	}
	
	
}
function saveUser(str, action) {
//alert(str);
    var code = $('#user').val();
    var name = $('#name').val();
    var password = $('#password').val();
	var group = $('#lovsgroup').val();
	var grouptext = "";
	$( "#lovsgroup option:selected" ).each(function() {
		grouptext = $( this ).text();
	});
	var province = $('#lovsprovince').val();
    if (action == 'update') {
        var id = $('#idUp').val();
		var province = $('#lovsprovince').val();
    }

    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    }
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else { // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
            sampleTable();
            $('#deleteAll').hide();
            $('#edit').hide();
            //  $('#create').hide();
        }
    }
    if (action == 'save' && grouptext == 'sekda') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action+ "&group=" + group + "&province=" + province + "&password=" + password + "&name=" + name + "&code=" + code, true);
    } else if (action == 'save' && grouptext != 'sekda') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action+ "&group=" + group + "&password=" + password + "&name=" + name + "&code=" + code, true);
    } else {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action+ "&group=" + group + "&password=" + password + "&id=" + id + "&name=" + name + "&code=" + code+ "&province=" + province, true);
    }
    xmlhttp.send();



}