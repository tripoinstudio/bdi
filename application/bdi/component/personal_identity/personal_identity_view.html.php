<div class="content">
    <ul class="nav nav-tabs" id="tabExample1">
        <li class="active"><a data-toggle="tab" href="#home1">Your Details</a></li>
        <li><a data-toggle="tab" href="#alamat1">Alamat Sesuai KTP</a></li>
        <li><a data-toggle="tab" href="#alamat2">Alamat Sekarang</a></li>
        <li><a data-toggle="tab" href="#nichiren">Detail Nichiren Soshu</a></li>
    </ul>
    <div class="tab-content">
        <div id="home1" class="tab-pane fade in active">
            <?php include 'view/detail1.html.php'; ?>
        </div>
        <div id="alamat1" class="tab-pane fade">
            <?php include 'view/detail-address1.html.php'; ?>

        </div>
        <div id="alamat2" class="tab-pane fade">
            <?php include 'view/detail-address2.html.php'; ?>

        </div>
        <div id="nichiren" class="tab-pane fade">
            <?php include 'view/nichiren.html.php'; ?>

        </div>

    </div>
</div>
