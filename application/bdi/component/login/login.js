


function cekLogin() {
   var username =  $('#input-username').val();
   var password =  $('#input-password').val();
   var sendinguser;
   var sendingpass;
   if(username == ""){
       sendinguser = '<label for="cname2" generated="true" class="error" style="display: block;">Username is required.</label>';
   } else {
       sendinguser = '';
   }
   $('#username-label').html(sendinguser);
    if(password == ""){
       sendingpass = '<label for="cname2" generated="true" class="error" style="display: block;">Password is required.</label>';
   } else {
       sendingpass = '';
   }
    $('#password-label').html(sendingpass);
    if(username != '' && password != ''){
 //       alert("tes");
    } else {
            return false;

    }
   
 //   alert(username+" - "+password);
                  //  <label for="cname2" generated="true" class="error" style="display: block;">Username is required.</label>

//    if (str.length == 0) {
//        document.getElementById("txtHint").innerHTML = "";
//        return;
//    } else {
//        var xmlhttp = new XMLHttpRequest();
//        xmlhttp.onreadystatechange = function() {
//            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
//                document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
//            }
//        }
//        xmlhttp.open("GET", "gethint.php?q=" + str, true);
//        xmlhttp.send();
//    }
}