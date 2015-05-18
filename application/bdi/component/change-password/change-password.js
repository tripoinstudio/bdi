$(function () {
    $('#export-pdf').hide();
	 $('#export-excel').hide();
	 $('#create').hide();
    $('#successf').hide();

});


function saveChangePass(str, action) {
//alert(str);
    var passwordlama = $('#password-lama').val();
	var repasswordbaru = $('#repassword-baru').val();
    var passwordbaru = $('#password-baru').val();

    if (action == 'update') {
        var id = $('#idUp').val();
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
            $('#create').hide();
            $('#cancel').hide();
            $('#successf').show();
        }
    }
	if (repasswordbaru == '' || passwordbaru == ''){
        
    alert("Field Password Baru Kosong");
	}else if (repasswordbaru == passwordbaru){
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id + "&password-lama=" + passwordlama + "&password_baru=" + passwordbaru, true);
    
	} else {
		alert("Password Baru Tidak sama");
	}
    
    xmlhttp.send();



}