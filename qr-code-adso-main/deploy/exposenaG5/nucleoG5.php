<?php
class nucleo
{
	function nucleo()
	{
		
	}
    function insertar ($programa)
	{
		include("configG5.php");
		$sql="insert into tb_programas (programa)";
		$sql.="values ('$programa')";
		$resultado= mysql_query($sql); 
	}	
}
?>