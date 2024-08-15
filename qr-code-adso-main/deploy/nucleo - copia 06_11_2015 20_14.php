<?php

include( "Encuesta.php" );

class nucleo
{
	
	public $obj_encuesta;	
	
	function nucleo ()
	{
		$this->obj_encuesta = new Encuesta();
	}
	
	function insertar($genero)
	{
		include("config.php");
		
		$sql = " INSERT INTO tb_genero(genero)";
		$sql.= " VALUES ('$genero')";
		$respuesta = mysql_query( $sql );
	}
	
	function guardar_personas( $tipo_doc, $num_doc, $nombres, $apellidos, $rol, $genero )
	{		
		include("config.php"); //Se incluyen los par�metros a usar a trav�s del archivo config.
	
		$tipo_doc		= TRIM( $tipo_doc );
		$num_doc		= $this->ajustar_nombres_propios( $num_doc );
		$nombres		= $this->ajustar_nombres_propios( $nombres );
		$apellidos		= $this->ajustar_nombres_propios( $apellidos );
		$rol			= TRIM( $rol );
		$genero			= TRIM( $genero );
	
		$respuesta = 0; //En caso de fallar, la funci�n retornar� cero, indicando error o falencia.
		$error = "";
		$existe_usuario = 0;
		
		//Aqu� retornamos el conteo de los registros de la existencia de un usuario.
		$existe_usuario = $this->retornar_dato_tabla( "num_doc", $num_doc, " COUNT( num_doc ) ", "num_doc", "tb_personas" );
		
		//echo "<br><br>Se encontraron ".$existe_usuario." registros del usuario.<br><br>";
		
		if( $existe_usuario * 1 == 0 )
		{
			//Realizamos las m�nimas validaciones para un usuario que se va a ingresar.
			$error = $this->validar_campos_ingreso_personas( $tipo_doc, $num_doc, $nombres, $apellidos, $rol, $genero );
			
			if( $error == "" )
			{
				$sql  = " INSERT INTO tb_personas( num_doc, nombres, apellidos, rol, cod_genero, fecha_registro, sn_mostrar, sn_contar, cod_tipo_doc ) ";
				$sql .= " VALUES( $num_doc, '$nombres', '$apellidos', '$rol', '$genero', NOW(), 's', 's', '$tipo_doc' ) ";
				
				//echo $sql;
				
				$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
				$resultado = $conexion->query( $sql );
				
				if( $conexion->affected_rows > 0 ) //Si se afecta o inserta alguna fila, se retornar� uno.
				{
					$respuesta = "Se guardaron o modificaron ".$conexion->affected_rows." registros correctamente.";
					
				}else{
						$respuesta = "Error: No se realizaron ingresos <strong>nuevos</strong>, es probable que la informaci�n ya exista.";	
					}
				
				
			}else{
					$respuesta = $error;	
				}
		
		}else{
			
			//Se retornar� el conteo de los errores
			$error = $this->validar_campos_ingreso_personas( $tipo_doc, $num_doc, $nombres, $apellidos, $rol, $genero, 1 );
			//Aqu� se actualizar�n los datos del usuario.			
			
			//$sql  = " num_doc, nombres, apellidos, rol, cod_genero, fecha_registro, sn_mostrar, sn_contar, cod_tipo_doc ) ";
			//$sql .= " VALUES( $num_doc, '$nombres', '$apellidos', '$rol', '$genero', NOW(), 's', 's', '$tipo_doc' ) ";
			
			if( $error * 1 <= 4 ) //Si son seis errores
			{
				/*$sql  = " UPDATE tb_personas ";
				$sql .= " SET  ";
				if( $tipo_doc != "" ) 	$sql .= " tipo_doc  = '".$tipo_doc."'";
				if( $nombres != "" ) 	$sql .= " nombres   = '".$nombres."'";
				if( $apellidos != "" ) 	$sql .= " apellidos = '".$apellidos."'";
				if( $rol != "" ) 	$sql .= " rol       = '".$rol."'";
				if( $genero != "" ) 	$sql .= " genero    = '".$genero."'";
				$sql  = " WHERE TRIM( num_doc ) = TRIM( '".$num_doc."' ) ";*/
				
				//echo $sql;
				
				/*$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
				$resultado = $conexion->query( $sql );
				
				if( $conexion->affected_rows > 0 ) //Si se afecta o inserta alguna fila, se retornar� uno.
				{
					$respuesta = "Se guardaron o modificaron ".$conexion->affected_rows." registros correctamente.";
					
				}else{
						$respuesta = "Error: No se <strong>modificaron</strong> datos.";	
					}*/
				
				
				$error = 0;
				
				if( $tipo_doc."" != "-1" ) 	$error += $this->actualizar_campo_tabla( "num_doc", $num_doc, "cod_tipo_doc", $tipo_doc, "tb_personas" );
				if( $nombres != "" ) 		$error += $this->actualizar_campo_tabla( "num_doc", $num_doc, "nombres", $nombres, "tb_personas" );
				if( $apellidos != "" ) 		$error += $this->actualizar_campo_tabla( "num_doc", $num_doc, "apellidos", $apellidos, "tb_personas" );
				if( $rol."" != "-1" ) 		$error += $this->actualizar_campo_tabla( "num_doc", $num_doc, "rol", $rol, "tb_personas" );
				if( $genero."" != "-1" )	$error += $this->actualizar_campo_tabla( "num_doc", $num_doc, "cod_genero", $genero, "tb_personas" );
				
				$respuesta = "<br>Se actualizaron ".$error." datos de la persona.<br><br> ";
			}			
		}
		
		return $respuesta;		
	}
	
	/**
	 * Este m�todo retorna un error derivado de la equivoaci�n en uno de los campos del registro del usuario, o simplemente
	 * retorna el n�mero de errores, desde cer o ning�n error; o 6 errores posibles en dichos campos.
	 *
	 */
	function validar_campos_ingreso_personas( $tipo_doc, $num_doc, $nombres, $apellidos, $rol, $genero, $des = null )
	{
		$error = "";
		$cuenta_error = 0;
		
		if( $tipo_doc == "" || $tipo_doc * 1 == -1 ){ $error = "Error: Debe seleccionar un tipo de documento."; $cuenta_error ++; }
		if( strlen( $num_doc ) < 7 ){ $error = "Error: Debe ingresar un documento correcto.";  $cuenta_error ++; }
		if( strlen( $nombres ) < 3 ){ $error = "Error: Debe ingresar el nombre de la persona correctamente.";  $cuenta_error ++; }
		if( strlen( $apellidos ) < 3 ){ $error = "Error: Debe ingresar los apellidos de la persona correctamente.";  $cuenta_error ++; }
		if( $rol == "" || $rol * 1 == -1 ){ $error = "Error: Debe seleccionar un rol de la lista de roles.";  $cuenta_error ++; }
		if( $genero == "" || $genero * 1 == -1 ){ $error = "Error: Debe seleccionar el g�nero de la persona.";  $cuenta_error ++; }
		
		if( $des != null ) $error = $cuenta_error;
		
		return $error;
	}
	
	function insertar_rol( $n_rol )
	{		
		include( "config.php" );
		
		//Aqu� se toma el rol y se ajusta, retransform�ndolo a su forma ordenada.
		$n_rol = $this->ajustar_nombres_propios( $n_rol );  //Gracias a Fontecha sofware productions FSP.
		
		$sql  = " insert into tb_rol( n_rol ) ";
		$sql .= " values( '$n_rol' ) ";
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		if( $conexion->affected_rows > 0 ) $respuesta = 1; //Si se afecta o inserta alguna fila, se retornar� uno.
		
		return $respuesta;
	}
	
	function actualizar_campo_tabla( $campo_busqueda, $valor_busqueda, $campo_a_actualizar, $valor_a_actualizar, $tabla, $dir_config = null )
	{
		if( $dir_config != null )
		{
			include( TRIM( $dir_config )."config.php" );
			
		}else{
				include( "config.php" );	
			}
				
		$sql  = " UPDATE $tabla SET $campo_a_actualizar = '".TRIM( $valor_a_actualizar )."' ";
		$sql .= " WHERE $campo_busqueda = '".$valor_busqueda."' ";
		
		//echo "<br>".$sql."<br>";
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		//echo "Se actualiz� ".$conexion->affected_rows." registros<br>";
		
		return $conexion->affected_rows; //Se retornan los registros afectados, si es cero pudo haber un error.
	}
	
	function actualizar_url_imagen( $cod_tipo_doc, $num_doc, $url_imagen, $dir_config = null )
	{
		if( $dir_config != null )
		{
			include( TRIM( $dir_config )."config.php" );
			
		}else{
				include( "config.php" );	
			}
				
		$sql  = " UPDATE tb_personas SET url_imagen = '".TRIM( $url_imagen )."' ";
		$sql .= " WHERE cod_tipo_doc = ".$cod_tipo_doc;
		$sql .= " AND   num_doc = ".$num_doc;
		
		//echo "<br>".$sql."<br>";
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		return $conexion->affected_rows; //Se retornan los registros afectados, si es cero pudo haber un error.
	}
	
	function imprimir_roles()
	{
		include( "config.php" );
		
		$valor_a_imprimir = "";
		
		$sql = " SELECT * FROM tb_rol ORDER BY n_rol ";
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		if( mysqli_num_rows( $resultado ) > 0 )
		{
			while( $fila = mysqli_fetch_assoc( $resultado ) )
			{   
				$valor_a_imprimir .= "<br>".$fila[ 'n_rol' ];   	
			}
		}
		
		return $valor_a_imprimir;
	}
	
	function retornar_lista_tabla( $campo_id, $campo_descripcion, $tabla, $nombre_lista )
	{
		include( "config.php" );
		
		$sql  = " SELECT $campo_id AS $campo_id, $campo_descripcion AS $campo_descripcion ";
		$sql .= " FROM $tabla ";
		$sql .= " WHERE TRIM( $campo_descripcion ) <> '' ";
		$sql .= " ORDER BY $campo_descripcion ";
		
		//echo $sql;
		$valor_a_imprimir = ""; //Inicializamos la variable para que no genere error.
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		if( mysqli_num_rows( $resultado ) > 0 )
		{
			$valor_a_imprimir  = "<select name = '$nombre_lista'>";
			$valor_a_imprimir .= "<option value='-1'>Seleccione</option>";
			
			while( $fila = mysqli_fetch_assoc( $resultado ) )
			{   
				$valor_a_imprimir .= "<option value='".$fila[ $campo_id ]."'>".$fila[ $campo_descripcion ]."</option>";   	
			}
			
			$valor_a_imprimir .= "</select>";
		}
		
		return utf8_encode( $valor_a_imprimir );
	}
	
	function retornar_dato_tabla( $campo_busqueda, $valor_busqueda, $campo_a_retornar, $alias_campo, $tabla, $dir_config = null )
	{
		if( $dir_config != null )
		{
			include( TRIM( $dir_config )."config.php" );
			
		}else{
				include( "config.php" );	
			}
		
		$sql  = " SELECT $campo_a_retornar AS $alias_campo ";
		$sql .= " FROM $tabla ";
		$sql .= " WHERE $campo_busqueda = '".TRIM( $valor_busqueda )."' ";
		
		//echo $sql;
		$valor_a_imprimir = ""; //Inicializamos la variable para que no genere error.
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		if( mysqli_num_rows( $resultado ) > 0 )
		{		
			while( $fila = mysqli_fetch_assoc( $resultado ) )
			{   
				$valor_a_imprimir .= $fila[ $alias_campo ];   	
			}
		}
		
		return utf8_decode( $valor_a_imprimir );
		//return utf8_encode( $valor_a_imprimir );
		//return $valor_a_imprimir;
	}
	
	function guardar_visitas( $identif_1, $identif_2, $dir_config = null )
	{
		if( $dir_config != null )
		{
			include( TRIM( $dir_config )."config.php" );
			
		}else{
				include( "config.php" );	
			}
				
		$sql  = " INSERT INTO tb_personas_registros( cod_pers_reg, identif_1, identif_2, fec_reg ) ";
		$sql .= " VALUES( null, '$identif_1', '$identif_2', NOW() ) ";
		
		//echo "<br>".$sql."<br>";
		
		$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
		$resultado = $conexion->query( $sql );
		
		return $conexion->affected_rows; //Se retornan los registros afectados, si es cero pudo haber un error.
	}
	
	/**
	 * Esta funci�n o m�todo es gracias al se�or Fontecha, creo. Su prop�sito es ajustar una cadena para que sea...
	 * guardada como un nombre propio. No importa el desorden ce may�sculas o min�sculas, la funci�n adaptar� una nueva cadena.
	 * @param	cadena		string o varchar		es la cadena que ser� remplazada por una ordenada.
	 */
	function ajustar_nombres_propios( $cadena )
	{
		return ucwords( trim( strtolower( preg_replace( "/\s+/", " ", ( str_replace( ".", " ",( $cadena ) ) ) ) ) ) );
	}
	
	function imprimir_titulo_pagina( $cadena )
	{
		return $cadena." EXPOSENA 2015 - CDATTG ";
	}
	

}

?>