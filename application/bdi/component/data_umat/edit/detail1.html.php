<?php
$dbumat = new Database();
$dbumat->connect();
?>

<?= inputGeneral($query1['tb_data_umat_nama_ktp'], NAMA_SEKARANG, 'nama_sekarang', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_data_umat_nama_panggilan'], NAMA_PANGGILAN, 'nama_panggilan', 'true', $_GET['action']); ?>
<?= inputGeneralTemplate(TTL, '
                    <input type="text"  id="place_of_birth" name="truetitles[]" value="'.$query1['tb_data_umat_tempat'].'" placeholder="Tempat" class="span4" />
                    <input type="text"  id="birth_date" name="truetitles[]" value="' . date("d-m-Y", strtotime($query1['tb_data_umat_tgl_lahir'])) . '" class="span4" onkeydown="hideDatepicker(event,this);"/>
                    ');
?>


<div class="form-row control-group row-fluid">
    <label class="control-label span3">Jenis Kelamin</label>
    <div class="controls span9">
        <?php
        if ($query1['tb_data_umat_gender'] == 1) {
            ?>
            <label class="radio inline">
                <input type="radio" id="gender"  value="1" name="gender"  checked="CHECKED" />
                <span style="padding-left: 10px;">Laki-laki </span>
            </label>
            <label class="radio inline">
                <input type="radio" id="gender" value="2" name="gender"/>
                <span style="padding-left: 10px;">Perempuan </span>
            </label>
            <?php
        } else {
            ?>
            <label class="radio inline">
                <input type="radio" id="gender"  value="1" name="gender" />
                <span style="padding-left: 10px;">Laki-laki </span>
            </label>
            <label class="radio inline">
                <input type="radio" id="gender" value="2" name="gender"   checked="CHECKED"/>
                <span style="padding-left: 10px;">Perempuan </span>
            </label>
            <?php
        }
        ?>

    </div>
</div>

<br />
<hr />
<br />

<?php
if ($query1['tb_data_umat_kewarganegaraan'] == 1) {
	$select = '<option value="0">Select ...</option>
            <option value="1" selected="selected">WNI</option>
            <option value="2">WNA</option>';
} else if ($query1['tb_data_umat_kewarganegaraan'] == 2){
	$select = '<option value="0">Select ...</option>
            <option value="1" >WNI</option>
            <option value="2" selected="selected">WNA</option>';
} else {
	$select = '<option value="0" selected="selected">Select ...</option>
            <option value="1" >WNI</option>
            <option value="2">WNA</option>';
}
?>


<?= inputGeneralTemplate(KEWARGANEGARAAN, '<select id="lovsstatuscountry">'.$select.'</select>');?>
<?= inputGeneral($query1['tb_data_umat_pekerjaan'], 'Pekerjaan', 'job', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_data_umat_no_id'], NO_IDEN, 'no_iden', 'true', $_GET['action']); ?>
<?= inputGeneral($query1['tb_data_umat_alamat_ktp'], ALAMAT_KTP, 'alamat_ktp', 'true', $_GET['action']); ?>

<br />
<hr />
<br />

<?= inputGeneral($query1['tb_data_umat_alamat_tinggal'], ALAMAT_TINGGAL, 'alamat_tinggal', 'true', $_GET['action']); ?>
<?php
$arr = explode("-", $query1['tb_data_umat_no_tlp'], 2);
$first_telp_rumah = $arr[0];
$last_telp_rumah = $arr[1];

$arrs = explode("-", $query1['tb_data_umat_no_hp'], 2);
$first_no_handphone = $arrs[0];
$last_no_handphone = $arrs[1];
?>
<?= inputGeneralTemplate(TELP_RUMAH, '
                    <input type="text"  id="first_telp_rumah" name="truetitles[]" value="'.$first_telp_rumah.'" onkeypress="return maxFourNumber(event,this)" placeholder="021" class="span2" /> - 
                    <input type="text"  id="last_telp_rumah" name="truetitles[]" value="'.$last_telp_rumah.'" onkeyup="return maxEightNumber(event,this);" placeholder="12345678" class="span6" />
                    ');
?>

<br />
<hr />
<br />

<?= inputGeneral($query1['tb_data_umat_no_hp'], NO_HANDPHONE, 'no_handphone', 'true', $_GET['action'],'','onkeypress="return maxTwelveNumber(event,this)"'); ?>
<?php /*= inputGeneralTemplate(NO_HANDPHONE, '
                    <input type="text"  id="first_no_handphone" name="truetitles[]" value="'.$first_no_handphone.'" onkeypress="return maxFourNumber(event,this)" placeholder="021" class="span2" /> - 
                    <input type="text"  id="last_no_handphone" name="truetitles[]" value="'.$last_no_handphone.'" onkeyup="return maxEightNumber(event,this);" placeholder="12345678" class="span6" />
                    '); */
?>
<?= inputGeneral($query1['tb_data_umat_email'], EMAIL, 'email', 'true', $_GET['action']); ?>

<input type="hidden" id="code_umat" value="<?=$query1['tb_data_umat_code'];?>" />
<input type="hidden" id="code_umat_id" value="<?=$query1['tb_data_umat_id'];?>" />
<input type="hidden" id="id_name1" value="<?=$query1['tb_data_umat_hub1'];?>" />
<input type="hidden" id="id_name2" value="<?=$query1['tb_data_umat_hub2'];?>" />