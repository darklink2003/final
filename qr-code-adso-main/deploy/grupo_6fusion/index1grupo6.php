<?php
include("nucleogrupo6.php");
$obj_rol= new nucleo();
$n_rol= $_POST['rol'];

?>


<?php
$a=$obj_rol->insertar(ucwords(trim(strtolower(preg_replace("/\s+/", " ",($n_rol))))));


echo  "ingresado";
?>


</body>
</html>
