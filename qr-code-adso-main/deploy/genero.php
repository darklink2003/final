<?php
include("nucleo.php");
$obj_traductor= new nucleo();
$genero= $_POST['genero'];

?>
<html>
<head><title>genero</title></head>
<body>
<?php

$a=$obj_traductor->insertar(ucwords (trim(strtolower($genero)))) ;

?>

<script language="javascript"> 
     alert("Guardado"); 
     </script>
     <?php
	 include 'frm_genero_1.php';
	 ?>
     
</body>
</html>
