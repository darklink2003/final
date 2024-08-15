<?php
include("nucleo.php");
$obj_traductor= new nucleo();
$tipo_documento= $_POST['tipo_documento'];

?>
<html>
<head><title>documento</title></head>
<body>
<?php

$a=$obj_traductor->insertar(ucwords (trim(strtolower(preg_replace("/\s+/", " ",($tipo_documento))))))
?>

<script language="javascript"> 
     alert("Guardado"); 
     </script>
     <?php
	 include 'index_1.php';
	 ?>
     
</body>
</html>
