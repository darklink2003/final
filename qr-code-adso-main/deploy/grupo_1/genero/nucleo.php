<?php
class nucleo
{
function nucleo ()
{

}
function insertar ($genero)
	
	{
		include("config.php");
		$sql = " INSERT INTO tb_genero(genero)";
        $sql.= " VALUES ('$genero')";
		$respuesta = mysql_query( $sql );
	}
}
?>