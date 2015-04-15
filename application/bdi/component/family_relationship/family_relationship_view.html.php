<?= inputGeneralTemplate('Pilih Daerah', idListViewManual('SELECT s.tb_sentra_id, p.tb_province_code, p.tb_province_name tb_sentra_name FROM tb_province p JOIN tb_sentra s ON p.tb_province_id = s.tb_sentra_province_id WHERE s.tb_sentra_id =' . $query1['tb_cetya_sentra_id'], "tb_sentra_name")); ?>
<?= inputGeneralView($query1['tb_cetya_name'], 'Nama cetya', 'name', 'Some hint here', $_GET['action']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneralView($query1['tb_cetya_remarks'], 'Remarks', 'remarks', 'Some hint here', $_GET['action']); ?>


<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Dharmasala</th>
        </tr>
    </thead>
    <tbody id="item">

        <?php
        $dbs = new Database();
        $dbs->connect();

        $groupa = $query1['tb_cetya_id'];
        $dbs->select('tb_dharmasala', '*', NULL, 'tb_dharmasala_cetya_id=' . $groupa);
        $list_users = $dbs->getResult();
        foreach ($list_users as $usera) {
            $noi += 1;
            ?>

            <tr>
                <th style="text-align:center;width:5%;vertical-align: middle;">
                    <?= $noi; ?>
                </th>
                <th class="hidden-phone" style="width:30%;" >
                    <?= $usera['tb_dharmasala_name']; ?>
                </th>


            </tr>
            <?php
        }
        ?>

    </tbody>
</table>
</div>