

<?= inputGeneralViewLov($query1['tb_family_relationship_personal_id'], 'Nama Keluarga', 'personal_identity', 'true', $_GET['action']); ?>


<table class="table table-striped table-bordered" id="sample_1">
    <thead>
        <tr>
            <th style="width:5%;text-align:center;vertical-align: middle;">No</th>
            <th style="width:30%;text-align:center;vertical-align: middle;">Code</th>

            <th style="width:30%;text-align:center;vertical-align: middle;" class="hidden-phone">Nama</th>

        </tr>
    </thead>
    <tbody id="item">

        <?php
        $dbs = new Database();
        $dbs->connect();

        $groupa = $query1['tb_family_relationship_id'];
        $dbs->select('tb_relationship', '*', NULL, 'tb_family_relationship_id=' . $groupa);
        $list_users = $dbs->getResult();
        foreach ($list_users as $usera) {
            $noi += 1;
            ?>

            <tr>
                <th style="text-align:center;width:5%;vertical-align: middle;">
                    <?= $noi; ?>
                </th>
                <th class="hidden-phone" style="width:30%;" >
                    <?= $usera['tb_relationship_relation_code']; ?>
                </th>
                <th class="hidden-phone" style="width:30%;" >
                    <?= idListViewTarget($usera['tb_relationship_relationship_id'], "personal_identity", "tb_personal_identity_name"); ?>

                </th>


            </tr>
            <?php
        }
        ?>

    </tbody>
</table>
<a href="javascript:void(0)" onclick="exportPdfUmat('pdf','pdf-relationship',<?=$query1['tb_family_relationship_id'];?>);" class="btn btn-danger" id="export-pdf-id"><span class="icon-file"> EXPORT PDF</span></a>
