$(function () {
    $('#create').hide();
    $('#successf').hide();

});


$('#username').editable({
    type: 'text',
    pk: 1,
    name: 'username',
    url: '#',
    title: 'Enter username'
});

function savesetting(str, action) {
//alert(str);
    var code = $('#code').val();
    var name = $('#name').val();

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
    if (action == 'save') {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&name=" + name + "&code=" + code, true);
    } else {
        xmlhttp.open("GET", "component/content/index2.php?content=" + str + "&action=" + action + "&id=" + id + "&name=" + name + "&code=" + code, true);
    }
    xmlhttp.send();



}