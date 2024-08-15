<?php

	class Encuesta
	{
		public function Encuesta()
		{
		}

		public function imprimir_encuesta( $id_encuesta = null )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "";
			
			$sql  = " SELECT * FROM tb_encuestas ";
			if( $id_encuesta != null ) $sql .= " WHERE id_encuesta = ".$id_encuesta;
			$sql .= " ORDER BY fecha_registro DESC LIMIT 1 ";
			//echo $sql;
			
			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{   
					$valor_a_imprimir .= "<br>".$this->imprimir_preguntas( $id_encuesta );   	
				}
			}
			
			return utf8_encode($valor_a_imprimir);// 24/08/2016 modificó hrozo, se ingresa el utf8 por no visualización de acentos
		}

		public function imprimir_preguntas( $id_encuesta = null )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "<br><br>";
			
			$sql = " SELECT * FROM tb_preguntas WHERE id_encuesta = ".$id_encuesta." ORDER BY id_pregunta ";
			//echo $sql;
			
			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{   
					$valor_a_imprimir .= "<br>".$fila[ 'texto_pregunta' ].$this->imprimir_posibles_respuestas( $fila[ 'id_pregunta' ] );   	
				}
			}
			
			return $valor_a_imprimir;
		}

		public function imprimir_posibles_respuestas( $id_pregunta )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "<br>";
			
			$sql = " SELECT * FROM tb_posibles_respuestas WHERE id_pregunta = $id_pregunta ORDER BY id_posible_respuesta ";
			
			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{   
					$idr = $fila[ 'id_posible_respuesta' ];
					$tr = $fila[ 'texto_respuesta' ];
					$valor_a_imprimir .= "<br><input type='radio' name='opciones_".$id_pregunta."' value='".$idr."' required>".$tr;   	
				}

				$valor_a_imprimir .= "<br><br>";
			}
			
			return $valor_a_imprimir;
		}

		public function retornar_combinaciones_todo( $id_encuesta )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "";
			
			$sql  = " SELECT CONCAT( t1.id_encuesta, '_', t2.id_pregunta, '_', t3.id_posible_respuesta ) AS combinaciones ";
			$sql .= " FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3 ";
			$sql .= " WHERE t1.id_encuesta = t2.id_encuesta ";
			$sql .= " AND   t2.id_pregunta = t3.id_pregunta ";
			$sql .= " AND   t1.id_encuesta = ".$id_encuesta;
			$sql .= " ORDER BY t1.id_encuesta, t2.id_pregunta, t3.id_posible_respuesta; ";

			//echo $sql;

			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{   
					$valor_a_imprimir .= $fila[ 'combinaciones' ]."[fin]";
				}
			}
			
			return $valor_a_imprimir;
		}

		public function retornar_combinaciones_preguntas( $id_encuesta = null )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "";
			
			$sql  = " SELECT DISTINCT id_pregunta ";
			$sql .= " FROM tb_preguntas ";
			if( $id_encuesta != null  ) $sql .= " WHERE id_encuesta = ".$id_encuesta;
			$sql .= " ORDER BY id_pregunta ";

			//echo $sql;

			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{   
					$valor_a_imprimir .=  $fila[ 'id_pregunta' ]."_";
				}
			}
			
			return $valor_a_imprimir;
		}


		public function retornar_max_id( $campo, $tabla )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "";
			
			$sql  = " SELECT MAX( $campo ) AS $campo FROM $tabla ";

			//echo $sql;

			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{   
					$valor_a_imprimir = $fila[ $campo ] * 1;
				}
			}
			
			return $valor_a_imprimir;
		}
		
		public function retornar_datos_encuesta_usuario( $num_doc, $max_fecha = null )
		{
			include( "config.php" );
		
			$valor_a_imprimir = "";
			
			$sql  = " SELECT t1.titulo_encuesta, t2.texto_pregunta, t3.texto_respuesta, t4.fecha_registro ";
			$sql .= " FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3, tb_personas_respuestas t4 ";
			$sql .= " WHERE t1.id_encuesta = t2.id_encuesta ";
			$sql .= " AND   t2.id_pregunta = t3.id_pregunta ";
			$sql .= " AND   t3.id_posible_respuesta = t4.id_posible_respuesta ";
			$sql .= " AND   t4.num_doc = ".$num_doc;
			if( $max_fecha != null ) $sql .= " AND t4.fecha_registro > '".$max_fecha."'"; //20201005
			$sql .= " ORDER BY t2.id_pregunta, t4.fecha_registro ";

			//echo $sql;

			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );
			
			if( mysqli_num_rows( $resultado ) > 0 )
			{
				$valor_a_imprimir .= "<div class='row'>";
				
				while( $fila = mysqli_fetch_assoc( $resultado ) )
				{
					$valor_a_imprimir .= "<div class='col-xs-12 col-md-8 well'>" .$fila[ 'texto_pregunta' ]."</div>";
					$valor_a_imprimir .= "<div class='col-xs-12 col-md-1 well' >" .$fila[ 'texto_respuesta' ]."</div>";
					$valor_a_imprimir .= "<div class='col-xs-12 col-md-3 well' >" .$fila[ 'fecha_registro' ]."</div>";
				}
				
				$valor_a_imprimir .= "</div>";
			}
			
			return utf8_encode($valor_a_imprimir);
		}

		function guardar_respuesta_encuestado( $num_doc, $id_posible_respuesta )
		{
			include( "config.php" );	

			$sql  = " INSERT INTO tb_personas_respuestas ( id_persona_respuesta, num_doc, id_posible_respuesta, fecha_registro ) ";
			$sql .= " VALUES( null, '$num_doc', $id_posible_respuesta, NOW() ) ";

			//echo "<br>".$sql."<br>";

			$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
			$resultado = $conexion->query( $sql );

			return $conexion->affected_rows; //Se retornan los registros afectados, si es cero pudo haber un error.
		}
	}

?>
