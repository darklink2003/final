<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bs/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilo.css">        
  <script src="bs/js/jquerymin.js"></script>
  <script src="bs/js/bootstrap.min.js"></script>
	</body>
	</html>	
<?php
	
	    function imprimir_menu()
	    {		$a="<center>
	    			<div class='container' >
                	<div class='row'>
                	<div class='col-xs-12 col-md-1'></div>
        			<div class='col-xs-12 col-md-2'><img src='imagenes/expo1.png' class='img-responsive' id='logo'></div>
        			<div class='col-xs-12 col-md-6 '>";
				$a.="<a href='frm_personas_.php'> Ingresar Personas  </a> &nbsp &nbsp &nbsp" ;
				//$a.="<a href='frm_programas.php'> Ingresar Programa  </a> &nbsp &nbsp &nbsp" ;
				//$a.= "<a href='frm_rol_6.php'> Ingresar Roles</a> &nbsp &nbsp &nbsp";
				//$a.= "<a href='frm_genero_1.php'> Ingresar Generos </a> &nbsp &nbsp &nbsp";
				//$a.= "<a href='frm_tipo_documento_1.php'> Ingresar Tipo de documento </a>";
				//$a.= "<a href='leer-qr-code.php'> Leer escarapela </a> &nbsp &nbsp &nbsp";
				$a.= "<a href='estadisticas.php'> Estad&iacute;sticas </a> &nbsp &nbsp &nbsp";
				$a.= "<a href='crear.php'> Crea Nueva encuesta </a> &nbsp &nbsp &nbsp";

				$a.= "<br><br>";
				$a.= "<div style='font-size: 9px; color: gray;'>";
				$a.= "Software desarrollado por: Tecn&oacute;logo en An&aacute;lisis y Desarrollo Sistemas de Informaci&oacute;n ADSI 2015 - CDATTG";
				$a.= "</div>";
				$a.= "<hr/></div><div class='col-xs-12 hidden-xs col-md-2'>
				<img src='imagenes/ws.png' class='img-responsive' id='cabecera'></div>
				<div class='col-xs-12 col-md-1'></div>
				</div></div></div>
				</center>";
				return $a;
	    }

?>
