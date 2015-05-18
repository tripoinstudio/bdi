$(function () {
  //   alert("ipconfig");
    var ipconfig = $('#ipConfig').val();
   
    var str = queryString('content', ipconfig);
    var actions = queryString('action', ipconfig);
  

});
function savePembimbing(str, action) {
    var name = $('#name').val();
    var remarks = $('#remarks').val();

    var required = validationRequired();
    var sending = beforeSave(action);
    if (required == "nulls") {

    } else {
        prosesSave(str, action, sending,'&name='+name);
    }

}
