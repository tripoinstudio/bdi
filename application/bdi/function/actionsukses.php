
<?php if ($_GET['action'] == 'save') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been added<strong> Successfully</strong> 
    </div>
<?php } else if ($_GET['action'] == 'delete') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been Delete<strong> Successfully</strong> 
    </div>
<?php } else if ($_GET['action'] == 'update') { ?>
    <div class="alert alert-success">
        <button class="close" data-dismiss="alert">×</button>
        Data Has been Update<strong> Successfully</strong> 
    </div>
<?php } ?>								
<br />
