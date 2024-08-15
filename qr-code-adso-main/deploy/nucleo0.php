<?php
class nucleo
{
	function nucleo()
	{
		
	}
  
	function validar ($tipo_doc,$num_doc,$nombres, $apellidos, $rol, $genero)
	{
		if  ($tipo_doc <> "" && $num_doc <> "" && $nombres <> "" && $apellidos <> "" && $rol <> "" && $genero <> "" )
		{
			include("config.php");
			$sql="insert into tb_personas ( tipo_doc, num_doc, nombres, apellidos, rol, genero )";
			$sql.="values ('$tipo_doc','$num_doc','$nombres', '$apellidos', '$rol', '$genero')";
			$resultado= mysql_query($sql); 
			echo"<script>alert('ingreso'); window.location.href=\"frm_personas_.php\"          </script>";

		}elseif (isset ($genero)  || isset ($rol) || isset($tipo_doc) || isset($nombres) || isset($apellidos) || isset($num_doc))
		
		echo"<script>alert('hay campos vacios'); window.location.href=\"frm_personas_.php\"          </script>";
	}
	
	
	function validar_cajas ($cadena)
	{
		$error = 0;
		
	
		if ( strpos (strtolower ($cadena), "selec") === false )
		{
		
			$error = 0;
		
		}else{
				$error = -1;
		
			}	
			
		return $error;
	
	}

}


		
		
		
		
		
		


	
	
	
	
	
	
	
	
	
	
	/* function roll ($rol)
	{
		include("config.php");
		$sql="insert into tb_rol (n_rol)";
		$sql.="values ('$rol')";
		$resultado= mysql_query($sql); 
	}*/
	
	
?>