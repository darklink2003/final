<?php

	include( "menus.php" );
	include("nucleo.php");
	$obj_rol= new nucleo();
	$n_rol = $_POST['rol'];

	$a = $obj_rol->insertar_rol( $n_rol );

	echo imprimir_menu();
	echo "<br><br><br>";

	if( $a != 0 )
	{
		echo "Se han guardado los datos.";
		//header('location:frm_rol_6.php');

	}else{
			echo "Error: no se guardaron los datos.";
	}

?>


</body>
</html>
