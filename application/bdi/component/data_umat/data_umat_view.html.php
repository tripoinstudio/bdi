<div class="content">
    <ul class="nav nav-tabs" id="tabExample1">
        <li class="active"><a data-toggle="tab" href="#home1"><?=TAB1;?></a></li>
        <li><a data-toggle="tab" href="#alamat1"><?=TAB2;?></a></li>
        <li><a data-toggle="tab" href="#alamat2"><?=TAB3;?></a></li>
        <li><a data-toggle="tab" href="#nichiren"><?=TAB4;?></a></li>
        <li><a data-toggle="tab" href="#data-keluarga"><?=TAB5;?></a></li>
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
        <div id="data-keluarga" class="tab-pane fade">
            <?php include 'view/data-keluarga.html.php'; ?>

        </div>
        

    </div>
</div>