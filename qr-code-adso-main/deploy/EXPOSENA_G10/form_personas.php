<html>
<head>
<title> Ingreso de personas</title>
<meta charset="UTF-8">
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/estilo-usuario.css" rel="stylesheet"> 
</head>
<body>
<div class="formulario">
  <div class="contenedor-usuario-no-bootstrap-2"> 
	    <div class="row">
              Ingrese personas<br>
    <form action="gform_personas.php" method="post">
              <div class="col-md-4">
                    Documento <input class="form-control" type="text" name="num_doc" size="20" placeholder="Ingrese Documento">
              </div>
              <div class="col-md-4">
                    Nombres <input type="text" name="nombres" class="form-control" size="20" placeholder="Ingrese Nombres">
              </div>
              <div class="col-md-4">
                    Apellidos <input type="text" name="apellidos" size="20" class="form-control" placeholder="Ingrese Apellidos">
              </div>
      </div>            
                    <br>
   	  <div class="row">
   	 	      <div class="col-md-4">
   	 				          Genero<select name="genero" class="form-control">
                    			<OPTION>Femenino</OPTION>
                    			<OPTION>Masculino</OPTION>	
                		  </select>
            </div>
            <div class="col-md-4">
                    Rol <select name="rol" class="form-control">
                    			<OPTION>digitador</OPTION>
                    			<OPTION>aprendiz</OPTION>
                          <OPTION>instructor</OPTION>
                          <OPTION>egresado</OPTION>
                			</select>
            </div>
      </div>            
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
            <div class="col-md-4">
               Digitador
               <?php
               include('config.php');
                $sql='SELECT * FROM `tb_personas` WHERE rol = "digitador"';
                $respuesta = $conexion->query($sql);
                echo "<select name='id_digitador' class='form-control'>";
                while($fila=$respuesta->fetch() )
                {
                echo "<option value='".$fila['num_doc']."'>".$fila['nombres']."</option>";
                 }
                echo "</select>";
                
                ?>
                       
            </div>
            
      </div>
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
          <div class="col-md-4">
            <br>
          	<input type="submit" name="form_personas" value"Guardar" class="btn btn-default" >
          </div>
      </div>

    </form>
	</div>
</div>


</body>
</html>