<?php

	include( "menus.php" ); 
	include( "nucleo.php" );
	$obj_programa = new nucleo();
	
	$tipo_doc		= $_POST['tipo_doc'];
	$num_doc		= $_POST['num_doc'];
	$nombres		= $_POST['nombres'];
	$apellidos		= $_POST['apellidos'];
	$rol			= $_POST['rol'];
	$genero			= $_POST['genero'];
	$fecha_nacimiento			= $_POST['fecha_nacimiento'];
	$telefono					= $_POST['telefono'];

	$sn_registro_visitas = 0;

	//Los campos fecha de nacimiento y teléfono se colocaron para exposena 2022.
	//echo $tipo_doc." ".$num_doc." ".$nombres." ".$rol." ".$genero;
	//echo $fecha_nacimiento." ".$telefono;

	$respuesta = $obj_programa->guardar_personas( $tipo_doc, $num_doc, $nombres, $apellidos, $rol, $genero, $telefono, $fecha_nacimiento );

	//echo "<center><a href='phpqrcode/index.php?data=".TRIM( $num_doc )."&size=8&level=H&tipo_doc=".$tipo_doc."'>Ir a imprimir</a>"; //20192211
	//echo "<center><a href='frm_personas_.php'>Registrar más personas.</a>"; //20192211
	echo "<center><a href='ini-encuesta.php?cc=".TRIM( $num_doc )."'>Diligenciar encuesta.</a>"; //20200914
	echo "<br><br>
	<div class='row'>
        	<div class='col-xs-12 col-md-4'></div>
        	<div class='col-xs-12 col-md-4 well'>";

	if( strpos( $respuesta, "Error:" ) === false )
	{
		echo "<p class='alert alert-info alert-dismissable'><strong>Se han guardado los datos.</strong></p><br>";

	}else{
			echo imprimir_menu();
		}

	echo "<br><br><br>";
	echo $respuesta;
	echo "<br><br><br>";
	$sn_registro_visitas = $obj_programa->guardar_visitas( $num_doc, $num_doc );

	if( $sn_registro_visitas >= 0 )
	echo "<p class='alert alert-info alert-dismissable'><strong>Se registr&oacute; ".$sn_registro_visitas." visita el d&iacute;a de hoy.</strong></p><br></div>
	<div class='col-xs-12 col-md-4'></div></center>";

?>