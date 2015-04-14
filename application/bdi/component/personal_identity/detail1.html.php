<?= inputGeneral('....', 'Nama Sekarang', 'name', 'true', $_GET['action']); ?>
<div class="form-row control-group row-fluid">
    <label class="control-label span3">Jenis Kelamin</label>
    <div class="controls span9">
        <label class="radio ">
            <div class="radio"><span><input type="radio" value="hi" name="radio" style="opacity: 0;"></span></div>
            Laki-laki 
        </label>
        <label class="radio ">
            <div class="radio"><span><input type="radio" value="hi" name="radio" checked="CHECKED"></span></div>
            Perempuan
        </label>
        <span class="help-inline" name="namens[]" id="kelaminns">
        </span>

    </div>
</div>
<?= inputGeneralTemplate('Tempat/Tanggal Lahir', '
                    <input type="text"  id="tempat" name="truetitles[]" placeholder="Tempat" class="span4" />
                    <input type="text"  id="tgl" name="truetitles[]" value="' . date('m/d/Y') . '" class="span4" />
                    ');
?>
<?= inputGeneral('....', 'Nama Sekarang', 'name', 'true', $_GET['action']); ?>