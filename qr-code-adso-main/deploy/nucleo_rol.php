<?php
class nucleo
{
	function nucleo()
	{
	}

	/* Esta función nunca retorna nada, no expresa si un valor ha sido guardado o no.
	Y por lo visto funciona cuando se le antoja. Ya no está siendo usada por el sistema, es obsoleta. */
	function insertar ( $n_rol )
	{
		include( "config.php" );
		$sql=" insert into tb_rol( n_rol ) ";
		$sql.=" values( '$n_rol' ) ";
		$resultado = mysql_query( $sql );
	}
}

?>