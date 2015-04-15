<div class="content">
    <ul class="nav nav-tabs" id="tabExample1">
        <li class="active"><a data-toggle="tab" href="#home1">Your Details</a></li>
        <li><a data-toggle="tab" href="#alamat1">Alamat Sesuai KTP</a></li>
        <li><a data-toggle="tab" href="#alamat2">Alamat Sekarang</a></li>
        <li><a data-toggle="tab" href="#nichiren">Detail Nichiren Soshu</a></li>
    </ul>
    <div class="tab-content">
        <div id="home1" class="tab-pane fade in active">
            <?php include 'edit/detail1.html.php'; ?>
        </div>
        <div id="alamat1" class="tab-pane fade">
            <?php include 'edit/detail-address1.html.php'; ?>

        </div>
        <div id="alamat2" class="tab-pane fade">
            <?php include 'edit/detail-address2.html.php'; ?>

        </div>
        <div id="nichiren" class="tab-pane fade">
            <?php include 'edit/nichiren.html.php'; ?>

        </div>

    </div>
</div>
<p/>
<p/>
<p/>
<input type="hidden" id="idUp" value="<?= $_GET['id']; ?>" />

<div class="form-horizontal">
    <button type="button" onclick="saveDataUmat('<?= $cekMenu['menu_function_link']; ?>', 'update');" class="btn blue"><i class="icon-ok"></i> Save</button>
    <button type="button" onclick="showMenu('<?= $cekMenu['menu_function_link']; ?>');" class="btn"><i class=" icon-remove"></i> Cancel</button>
</div>