<?php
class nucleo
{
function nucleo ()
{

}
function insertar ($tipo_documento)
	
	{
		include("config.php");
		$sql = " INSERT INTO tb_tipo_doc(tipo_documento)";
        $sql.= " VALUES ('$tipo_documento')";
		$respuesta = mysql_query( $sql );
	}
}

?>