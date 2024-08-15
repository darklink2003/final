<?php
	include("menus.php");                
?>
<head>
<title>Ingreso de programas</title>
</head>
<body>
<?php
echo imprimir_menu();
?>
<form action="index_programas.php" method="post">
Nombre del programa: <br><br><input type="text" name="programa"><br><br><br>
<input type="submit" value="Ingresar">
<br>
<?php
            include("config.php");
			$sql='select * from tb_programas group by programa';
            $resultado= mysql_query($sql);
            while ($row=mysql_fetch_assoc($resultado))
            {
                echo "<br>".$row{"programa"};
            }
            echo "</select>";
?>
</body>