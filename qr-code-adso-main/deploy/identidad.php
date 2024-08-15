<?php
include("nucleo_doc.php");
$obj_traductor= new nucleo();
$tipo_documento= $_POST['tipo_documento'];

?>
<html>
<head><title>documento</title></head>
<body>
<?php

$a=$obj_traductor->insertar(ucwords (trim(strtolower(preg_replace("/\s+/", " ",($tipo_documento))))));
$b=$obj_traductor->soloLetras(preg_match('/ ^ [a-zA-Z0-9] + $ /',$tipo_documento));
?>

<script language="javascript"> 
     alert("Guardado"); 
     </script>
     <?php
	 include 'frm_tipo_documento_1.php';
	 ?>
     
</body>
</html>
