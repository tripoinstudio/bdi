<?= inputLov('Province', 'lovprovince', 'lovprovinces', 'province', $_GET['action'],'idLovprovince', $query1['tb_sentra_province_id']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneralView($query1['tb_sentra_remarks'], 'Remarks', 'remarks', 'true', $_GET['action']); ?>


<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Cetya</th>
        </tr>
    </thead>
    <tbody id="item">

        <?php
        $dbs = new Database();
        $dbs->connect();

        $groupa = $query1['tb_sentra_id'];
        $dbs->select('tb_cetya', '*', NULL, 'tb_cetya_sentra_id=' . $groupa);
        $list_users = $dbs->getResult();
        foreach ($list_users as $usera) {
            $noi += 1;
            ?>

            <tr>
                <th style="text-align:center;width:5%;vertical-align: middle;">
                    <?= $noi; ?>
                </th>
                <th class="hidden-phone" style="width:30%;" >
                    <?= $usera['tb_cetya_name']; ?>
                </th>


            </tr>
            <?php
        }
        ?>

    </tbody>
</table>
</div>