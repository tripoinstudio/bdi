<div class="content top">

    <?php include "../../function/actionheader.php"; ?>


    <p/><p/>
    <?php
    $action = $_GET['action'];
    if ($_SESSION['backend'] == 1) {
        if ($action == 'new' || $action == 'view' || $action == 'edit') {
            //	include "".$cekMenu['menu_function_link']."_newedit.html.php";
            include "../../function/function_newedit.html.php";
        } else if ($action == 'save') {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_list.html.php";
        } else {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_list.html.php";
        }
    } else if ($_SESSION['backend'] == 2) {
        if ($action == 'new' || $action == 'view' || $action == 'edit') {
            //	include "".$cekMenu['menu_function_link']."_newedit.html.php";
            include "../../function/function_newedit.html.php";
        } else if ($action == 'save') {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_list.html.php";
        } else {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_list.html.php";
        }
    }
    ?>

</div>

