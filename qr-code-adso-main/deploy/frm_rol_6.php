<html>

	<head>
		<title>Inicio</title>
	</head>

	<body>

		<?php

			include( "menus.php" );
			include( "nucleo.php" );
			$obj_programa = new nucleo();
			echo imprimir_menu();

		?>

		<form action="index_rol.php" method="post">

			Ingrese Rol: 
			<br><br>
			<input type="text" name="rol"><br><br><br>
			<input type="submit" value="ingresar">

		</form>

		<!-- Esta es otra forma de imprimir en php, hay que estudiarla antes de usarla. -->
		<?= $obj_programa->imprimir_roles(); ?>

	</body>
</html>

