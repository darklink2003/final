<?php

	//por favor incluir este código en sus archivos php antes de cualquier contenido 
	include("../../menus.php");
	echo imprimir_menu();
                
?>
<form action="genero.php" method="post">
    genero<input type="text" name="genero"><br>
   <input type="submit" value="guardar">

</form>

<br>
<?php
            include("config.php");
			$sql='select * from tb_genero group by genero';
            $resultado= mysql_query($sql);
            echo "<select  name='tipo'>";
            echo "<option selected>---registro---</option>";
            while ($row=mysql_fetch_assoc($resultado))
            {
                
                echo "<option value='".$row{"genero"}."'>".$row{"genero"};
            }
            echo "</select>";
?>
