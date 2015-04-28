$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
    if (actions == 'new') {
        lovNew(str, actions, 'group');

    } else if (actions == 'edit' || actions == 'view') {
        lovEdit(str, actions, 'group');

    }

});
function saveUser(str, action) {
//alert(str);
    var code = $('#user').val();
    var name = $('#name').val();
    var password = $('#password').val();
var group = $('#lovsgroup').val();
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
            //  $('#create').hide();
        }
    }
    if (action == 'save') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action+ "&group=" + group + "&password=" + password + "&name=" + name + "&code=" + code, true);
    } else {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action+ "&group=" + group + "&password=" + password + "&id=" + id + "&name=" + name + "&code=" + code, true);
    }
    xmlhttp.send();



}