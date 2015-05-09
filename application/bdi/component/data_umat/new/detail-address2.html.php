<?= inputLovNew('tb_province_id', 'tb_province_name', '', DAERAH, 'province', 'true', $_GET['action'], 'false', '', '','onchange="getSentraLov(this,0);"'); ?>

<?= inputGeneralTemplate(SENTRA, '<div style="height:5px;" id="sentraLov">'
        . '<select id="lovssentra" class="input-large m-wrap">'
        . '<option value="0">Select ...</option>'
        . '</select>'
        . '</div>'); ?>
<?= inputGeneralTemplate(DISTRIK, '<div style="height:5px;" id="distrikLov">'
        . '<select id="lovsdistrik" class="input-large m-wrap" tabindex="1">'
        . '<option value="0">Select ...</option>'
        . '</select>'
        . '</div>'); ?>
<?= inputGeneralTemplate(CETYA, '<div style="height:5px;" id="cetyaLov">'
        . '<select id="lovscetya" class="input-large m-wrap" tabindex="1">'
        . '<option value="0">Select ...</option>'
        . '</select>'
        . '</div>'); ?>
<?= inputGeneralTemplate(DHARMASALA, '<div style="height:5px;" id="dharmasalaLov">'
        . '<select id="lovsdharmasala" class="input-large m-wrap" tabindex="1">'
        . '<option value="0">Select ...</option>'
        . '</select>'
        . '</div>'); ?>

<? //= inputLovNew('tb_sentra_id', 'tb_sentra_name', '', SENTRA, 'sentra', 'true', $_GET['action'], 'false', '', ''); ?>
<? //= inputLovNew('tb_distrik_id', 'tb_distrik_name', '', DISTRIK, 'distrik', 'true', $_GET['action'], 'false', '', ''); ?>
<? //= inputLovNew('tb_cetya_id', 'tb_cetya_name', '', CETYA, 'cetya', 'true', $_GET['action'], 'false', '', ''); ?>
<? //= inputLovNew('tb_dharmasala_id', 'tb_dharmasala_name', '', DHARMASALA, 'dharmasala', 'true', $_GET['action'], 'false', '', ''); ?>
