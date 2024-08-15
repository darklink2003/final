<?php
 
	include("nucleo0.php");
	$obj_programa= new nucleo();
	$tipo_doc= $_POST['tipo_doc'];
	$num_doc= $_POST['num_doc'];
	$nombres= $_POST['nombres'];
	$apellidos= $_POST['apellidos'];
	$rol= $_POST['rol'];
	$genero= $_POST['genero'];

	 /*$nombre_completo= $_POST['nombre_completo'];
	 $identi= $_POST['identi'];
	 $telefono= $_POST ['telefono'];
	 $correo= $_POST['correo'];
	 $rol= $_POST['rol'];*/
?>

<html>

	<head>
		<title>index</title>
	</head>

	<body>

		<?php

			$c = 0;

			 /*$a=$obj_programa->insertar($programa);
			$a=$obj_programa->validar($nombre_completo, $identi, $telefono, $correo);*/
			
			$n = $num_doc;


			$n = str_replace( ".", "", $n );
			$n = str_replace( ",", "", $n );
			$n = str_replace( " ", "", $n );
			$n = str_replace( "!", "", $n );
			$n = str_replace( "", "", $n );


			$c += $obj_programa->validar_cajas($tipo_doc);
			$c += $obj_programa->validar_cajas($rol);
			$c += $obj_programa->validar_cajas($genero);

			if ($c == 0 )
			{
				$obj_programa->validar($tipo_doc,$num_doc,$nombres, $apellidos, $rol, $genero);

			}else{
					//echo"<script>alert('No selecciono uno de los campos'); window.location.href=\"frm_personas_.php\"          </script>";
				}

		?>
	</body>
</html>