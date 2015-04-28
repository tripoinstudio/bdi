<div class="content">
    <ul class="nav nav-tabs" id="tabExample1">
        <li class="active"><a data-toggle="tab" href="#home1"><?=TAB1;?></a></li>
        <li><a data-toggle="tab" href="#alamat1"><?=TAB2;?></a></li>
        <li><a data-toggle="tab" href="#alamat2"><?=TAB3;?></a></li>
        <li><a data-toggle="tab" href="#nichiren"><?=TAB4;?></a></li>
    </ul>
    <div class="tab-content">
        <div id="home1" class="tab-pane fade in active">
            <?php include 'new/detail1.html.php'; ?>
        </div>
        <div id="alamat1" class="tab-pane fade">
            <?php include 'new/detail-address1.html.php'; ?>

        </div>
        <div id="alamat2" class="tab-pane fade">
            <?php include 'new/detail-address2.html.php'; ?>

        </div>
        <div id="nichiren" class="tab-pane fade">
            <?php include 'new/nichiren.html.php'; ?>

        </div>

    </div>
</div>
<p/>
<p/>
<p/>
<div class="form-horizontal">
    <div class="span7 offset3">
        <button type="button" onclick="saveDataUmat('<?= $cekMenu['menu_function_link']; ?>', 'save');" class="btn btn-primary"><i class="icon-ok"></i> Save</button>
        <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn btn-secondary"><i class=" icon-remove"></i> Cancel</button>
    </div>
</div>