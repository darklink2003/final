<?php
class nucleo
{
	function nucleo()
	{
		
	}
	function validar($programa)
	{
		
				
       if(mb_ereg("^[a-zA-Z0-9[:space:]]*$", $programa))
	   {
		   echo "No se pudo";
		   
	   
	   }
	   else
	   {
       echo " se pudo";
		 include("config.php");
		$sql="insert into tb_programas (programa)";
		$sql.="values ('$programa')";
		$resultado= mysql_query($sql);   
		echo "<script>alert('Se registro correctamen el nuevo programa'); window.location.href=\"frm_programas.php\"</script>";
	   }
     }
}
?>