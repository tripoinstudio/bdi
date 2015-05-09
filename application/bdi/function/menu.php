<?php
//$queryParentMenu1=mysql_query("select * from menu_function where menu_function_level=1");
$dbmenupertama = new Database();
$dbmenupertama->connect();

$dbmenukedua = new Database();
$dbmenukedua->connect();

//$dbmenupertama->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupas.' and status=1');
$dbmenupertama->sql("SELECT * FROM `structure_menu` s INNER JOIN `menu_function` m ON s.`menu_function_id`=m.`menu_function_id`  WHERE s.`tb_group_id`=" . $_SESSION['id_group'] . " and s.`status` =1 order by m.`menu_function_order` asc ");
$list_usersgr = $dbmenupertama->getResult();
?>

<ul id="sidebar_menu" class="navbar nav nav-list container full">
    <?php
    foreach ($list_usersgr as $menugr) {
        $dbmenupertama->select('menu_function', '*', NULL, 'menu_function_level=1 and status=1 and menu_function_id=' . $menugr['menu_function_id'], 'menu_function_order asc');
        $queryParentMenu1 = $dbmenupertama->getResult();

        $funcst = $menugr['menu_function_id'];
        $minsa = explode(',', $menugr['structure_menu_action']);
        // print_r($minsa[0])
        if ($minsa[0] == '2') {

            foreach ($queryParentMenu1 as $menuPertama) {

                $parents = $menuPertama['menu_function_id'];
				
					$menulink = '';
				
                ?>

                <li class="accordion-group <?= $menuPertama['menu_function_color']; ?>"> 
				<?php
				if($parents == 1){
				?>
                     <a class="<?= $menuPertama['menu_function_collapse']; ?>" href="<?= $menulink; ?>">
                  <?php } else {
					$menulink = $menuPertama['menu_function_link'];
					?>
					<a class="<?= $menuPertama['menu_function_collapse']; ?>" data-toggle="collapse" data-parent="#sidebar_menu" href="<?= $menulink; ?>">
					<?php
				}
?>				
				   <img src="<?= $menuPertama['menu_function_image']; ?>" />
                        <span><?= $menuPertama['menu_function_name']; ?></span>
                    </a>



                    <?php
                    $dbmenukedua->select('structure_menu', '*', NULL, 'tb_group_id=' . $groupas);
                    $list_usersgrs = $dbmenukedua->getResult();
                    ?>

                    <ul id="<?= $menuPertama['menu_function_idul']; ?>" class="accordion-body collapse">



                        <?php
                        foreach ($list_usersgrs as $menuPertamaa) {
                            //$queryParentMenu2=mysql_query("select * from menu_function where menu_function_parent=".$parents); 
                            $minsas = explode(',', $menuPertamaa['structure_menu_action']);
                            // print_r($minsa[0])
                            if ($minsas[0] == '2') {
                                $dbmenukedua->select('menu_function', '*', NULL, 'menu_function_level=2 and menu_function_parent=' . $parents . ' and status=1 and menu_function_id=' . $menuPertamaa['menu_function_id'], 'menu_function_order asc');
                                $queryParentMenu2 = $dbmenukedua->getResult();
                                foreach ($queryParentMenu2 as $menuKedua) {
                                    //    if ($menuKedua['menu_function_id'] == $funcst) {
                                    ?>
                                    <li><a href="javascript:void(0);" onclick="showMenu('<?= $menuKedua['menu_function_link']; ?>', '<?= $menuKedua['menu_function_name']; ?>');"><?= $menuKedua['menu_function_name']; ?></a></li>
                                    <?php
                                }
                            }
                        }
                        ?>

                    </ul>
                    <?php ?>

                </li>

                <?php
            }
        }
    }
    ?>
</ul>