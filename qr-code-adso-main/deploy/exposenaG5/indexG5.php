<?php
 include("nucleoG5.php");
 $obj_programa= new nucleo();
 $programa= $_POST['programa'];
?>
<html>
<head><title>index</title></head>
<body>
<?php
 $a=$obj_programa->insertar(ucwords(trim(strtolower($programa))));
 echo "ingresado";
?>
</body>
</html>