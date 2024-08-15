<?php

	include( "nucleo.php" );
	$obj_nucleo = new nucleo();

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html ng-app="consulta_exposena_app" xmlns="http://www.w3.org/1999/xhtml">

	<head>            

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><?= $obj_nucleo->imprimir_titulo_pagina( "Ingreso de personas" ) ?></title>
		<link rel="shortcut icon" href="expo12.png" type="image/png" />

		<!--Se incluye la libreria de AngularJs para los efectos y funcionalidades adicionales-->
        <script src="js/angular.min.js"></script>


	</head>

	<body>

		<?php

			//por favor incluir este código en sus archivos php antes de cualquier contenido 
			include("menus.php");
			echo imprimir_menu();
		                
		?>

		<?php /*echo date( "d" )."/".date( "m" )."/".date( "Y" );*/  ?>
		<div class='row'>
        	<div class='col-xs-12 col-md-4'></div>
        	<div class='col-xs-12 col-md-4 well'>	
		<center>

			<form class="login" action="guardar_personas.php" method="post"> <!--Este form estaba sin cerrar-->
			
				<li>Tipo Documento</li>

				<?= $obj_nucleo->retornar_lista_tabla( "cod_tipo_doc", "desc_tipo_doc", "tb_tipo_doc", "tipo_doc" ) ?>

				<br>

				<!-- Búsqueda por ángular js, documento -->
				<div id="busqueda" ng-controller="consulta_exposena_controlador">

					<li>Documento:</li>
					<input class="form-control" type="text" name="num_doc" maxlength="12" min="8" ng-model="datos" ng-change="cargar_datos()">

					<div id="resultado-tecleando">
						<div class="resultado-tecleando-interior" ng-repeat="datos in informacion">
							Estatus: <strong>Registrado...</strong><br>
							<!-- <strong>{{ datos.desc_rol }} HAy un error </strong> -->
							<br>
							{{ datos.nombres + " " + datos.apellidos }}<br>
							<div style="width: 300px; color: gray;">
								Solo de clic en el bot&oacute;n Ingresar para guardar la visita o guardar algún valor que haya digitado y desee cambiar. 
							</div>
						</div>
					</div>

				</div>
				<!-- Fin búsqueda por ángular js, documento -->

				<br>
				<li>Nombres:</li><input class="form-control" type="text" name="nombres" value="{{ datos.nombres}}">

				<br>
				<li>Apellidos:</li><input class="form-control" type="text" name="apellidos">

				<br>
				<li>Fecha nacimiento:</li><input class="form-control" type="date" name="fecha_nacimiento">

				<br>
				<li>Teléfono:</li><input class="form-control" type="text" name="telefono">

				<br>
				<li>Nivel de formación:</li>

				<?= $obj_nucleo->retornar_lista_tabla( "cod_rol", "desc_rol", "tb_roles", "rol" ) ?>


				<br>
				<li>Genero</li>

				<?= $obj_nucleo->retornar_lista_tabla( "cod_genero", "genero", "tb_genero", "genero" ) ?>

				<br><br>
				<input class="btn btn-md btn-primary btn-block" type="submit" value="Ingresar">

			</form>
		</div>
	<div class='col-xs-12 col-md-4'></div>
		</center>

	</div>

	<!-- Esta parte se encarga de la búsqueda AngularJs -->
	<script>
		
		var consulta_museo_app = angular.module( 'consulta_exposena_app', [] );
		
		consulta_museo_app.controller( "consulta_exposena_controlador", 
					      
			[ "$scope", "$http",
				
				function( $scope, $http )
				{
					$scope.cargar_datos = function()
					{
						console.log( $scope.datos );
						//console.log( "Superconjunto " + $scope.superconjunto ); //Esto proviene de un ng-init
						
						
						if ( $scope.datos != "" )
						{
							$http.get( 'consultar_info_tecleando.php?cadena=' + $scope.datos ).success
							(								
								function( response )
								{
									$scope.informacion = response.records;
									//$scope.informacion = "Esto";
								}
							);

						}else{
								$scope.informacion = ""; //Limpia toda la cadena que aparece cuando se digitan datos.
						}
					}
					
					$scope.impresion = "Funciona el angular";
				}				
			]					      
		);
		
	</script>



	</body>
</html>
