<?php

	//por favor incluir este código en sus archivos php antes de cualquier contenido 
	include("menus.php");
	echo imprimir_menu();
                
?>

<form action="identidad.php" method="post">
    tipo documento<input type="text" name="tipo_documento"><br>
   <input type="submit" value="guardar">

</form>
<br>

<html>
	<head>
		<title>Recuperando datos de Mysql desde PHP</title>
	</head>
	<body>
		<div>
			<fieldset>
				<legend> Registros: </legend>
				<div>
					<?php
					    include("registro.php");
					    $Con = new conexion();
					    $Con->recuperarDatos();
					?>
				</div>
			</fieldset>
		</div>
	</body>
	<footer>
	</footer>
</html>

 
 
