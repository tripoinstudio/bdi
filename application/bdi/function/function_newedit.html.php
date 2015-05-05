<form class="row-fluid" action="#">
    <?php
    if ($_SESSION['backend'] == 1) {
        if ($action == 'new') {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_new.html.php";
        } else if ($action == 'view') {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_view.html.php";
        } else if ($action == 'edit') {
            include "../" . $cekMenu['menu_function_link'] . "/" . $cekMenu['menu_function_link'] . "_edit.html.php";
        }
    } else if ($_SESSION['backend'] == 2) {
         if ($action == 'new') {
            include "../" . $cekMenu['menu_function_link'] . "-service/" . $cekMenu['menu_function_link'] . "_new.html.php";
        } else if ($action == 'view') {
            include "../" . $cekMenu['menu_function_link'] . "-service/" . $cekMenu['menu_function_link'] . "_view.html.php";
        } else if ($action == 'edit') {
            include "../" . $cekMenu['menu_function_link'] . "-service/" . $cekMenu['menu_function_link'] . "_edit.html.php";
        }
    }
    ?>
</form>