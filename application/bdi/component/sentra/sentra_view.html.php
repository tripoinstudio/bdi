

<?= inputLov('Province', 'lovprovince', 'lovprovinces', 'province', $_GET['action'],'idLovprovince', $query1['tb_sentra_province_id']); ?>
<!-- place holder, Label, idfield,  -->
<?= inputGeneralView($query1['tb_sentra_remarks'], 'Remarks', 'remarks', 'true', $_GET['action']); ?>
