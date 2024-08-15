  <?php 
 function conteo_genero($campo, $condicion)
 {
   $sql  = " SELECT COUNT( $campo ) AS conteo ";
		$sql .= " FROM tb_personas t1";
		$sql .= " WHERE t1.$campo = '$condicion' ";
		$conexion = mysqli_connect('localhost','root','','ser4');
    $resultado2= $conexion->query($sql);

		$conte = mysqli_fetch_assoc($resultado2);
			$conteo=$conte['conteo'];
 	return ($conteo);
 }

		
   ?>