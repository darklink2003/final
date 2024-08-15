<?php
echo "<meta charset='UTF-8'>";
	include( "nucleo.php" );
	$obj_nucleo = new nucleo();

	//por favor incluir este código en sus archivos php antes de cualquier contenido 
	include("menus.php");

	/*************************** Se parametriza la encuesta ***********************************************************/
	$id_encuesta = $obj_nucleo->retornar_id_encuesta(); //Última encuesta, 202010, Camilof
	//echo "<h1>".$id_encuesta."</h1>";
	/*************************** Se parametriza la encuesta ***********************************************************/

?>


<html>
	<head>
		<title></title>
	</head>

	<body>

		<?= imprimir_menu(); ?>

		<br><br>

		<form action="guardar-encuestado.php" method="GET"> 

			<input type="hidden" name="combinaciones_preguntas" value="<?= $obj_nucleo->obj_encuesta->retornar_combinaciones_preguntas( $id_encuesta ); ?>">
			<input type="hidden" name="documento_invisible" value="<?= $_GET[ 'cc' ] ?>">
			<input type="hidden" name="id_encuesta" value="<?= $id_encuesta ?>">
			<br>

			<?php  

				$usuario = "";
				$usuario = $obj_nucleo->retornar_dato_tabla( "num_doc", $_GET[ 'cc' ], " CONCAT( nombres, ' ', apellidos ) ", "nombre_completo", "tb_personas" );

				if( TRIM( $usuario ) != "" )
				{
					$row="";
					echo "<div class='row'>";
						echo "<div class='col-xs-12 col-md-2 col-lg-2'></div>";
						echo "<div class='col-xs-12 col-md-8 col-lg-8'>";
								
								$row.="<div class='row well'>";
								$row.="<div class='col-xs-12 col-md-12 alert alert-info'><center><b>ENCUESTA REGISTRO SENA</b><center></div>";
								$row.="</div>";
								echo $row;

								$row2="<div class='row well'>";
								$row2.="<div class='col-xs-12 col-md-12'><b>Encuestando a: </b>".$usuario."</div>";
								echo $row2;
						
						echo $obj_nucleo->obj_encuesta->imprimir_encuesta( $id_encuesta );
						echo "<br>";

							echo "<input class='btn btn-md btn-primary btn-block' type='submit' value='Guardar Encuesta'>";
						echo "</div>";

					echo "<div class='col-xs-12 col-md-2'></div></div>";
				}else{
						echo "El usuario no se encuentra registrado, los datos no se guardar&iacute;an por lo tanto no se presentar&aacute; la encuesta. <br><br>";
					}

			?>

		</form>

	</body>
</html>

