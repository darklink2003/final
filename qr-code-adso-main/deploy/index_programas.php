<?php
 include("menus.php");
 echo imprimir_menu();
 include("nucleo_programas.php");
 $obj_programa= new nucleo();
 $programa= $_POST['programa'];
?>
<html>
<head><title>index</title></head>
<body>
<?php
 $a=$obj_programa->validar($programa);
?>
</body>
</html>