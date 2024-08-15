<html>
<head>
<title>Datos Guardados</title>
<meta charset="UTF-8">
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/estilo-usuario.css" rel="stylesheet"> 
</head>
<body>
			<?php
			include('config.php');
			include('funciones.php');

			$num_doc=$_POST['num_doc'];
			$nombres=$_POST['nombres'];
			$apellidos=$_POST['apellidos'];
			$rol=$_POST['rol'];
			$genero=$_POST['genero'];
			$id_digitador=$_POST['id_digitador'];
			insertar_usuario($num_doc,$nombres,$apellidos,$rol,$genero);
      insertar_registro($num_doc,$id_digitador);
      ?>
  <div class="imprimir">
    <div class="nombres">
    <?php
      echo "".$nombres; 
      echo "<br>";
      echo "<br>";
      echo $apellidos;
    ?>
    </div>
      <div class="qr1">
      <?php 
            include('qr/generador_qr.php');           
      ?>
      </div>   
      <div>   
      <input id="btn_imprimir" name="Imprimir" type="submit" value=   "Imprimir"  onclick=" this.style.visibility='hidden'; print(); this.style.visibility=''" />
      </div>
  </div>
</body>
</html>