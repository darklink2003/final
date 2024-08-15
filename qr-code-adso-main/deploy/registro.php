<?php
	class conexion{
		function recuperarDatos(){
			$host = "localhost";
			$user = "muffagco_adsi";
			$pw = "adsiexposena2015";
			$db = "muffagco_adsi_1";

			$con = mysql_connect($host, $user, $pw) or die("No se pudo conectar a la base de datos ");
			mysql_select_db($db, $con) or die ("No se encontro la base de datos. ");
			$query = "SELECT * FROM tb_tipo_doc";
			$resultado = mysql_query($query);

			while ($fila = mysql_fetch_array($resultado)) {
				echo " <tr>";
				echo "<td> $fila[tipo_documento]  </td>  <br> ";
				echo " </tr> ";
			}

		}
	}
?>