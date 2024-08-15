<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Sena-programación</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="css/estilo.css">  
	<script src="js/swfobject.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/swfaddress/swfaddress.js"></script>
	
	<script type="text/javascript">
	
		var flashvars = {
		};
		var params = {
			menu: "true",
			scale: "noScale",
			allowFullscreen: "true",
			allowScriptAccess: "always",
			bgcolor: "#FFFFFF"
		};
		var attributes = {
			id:"Sena"
		};
		swfobject.embedSWF("swf/qr-traza.swf", "altContent", "100%", "100%", "10.0.0", "swf/expressInstall.swf", flashvars, params, attributes);
		
	</script>
	
	<style type="text/css">
		html, body { height:100%; overflow:hidden; }
		body { margin:0; }
	</style>
	
</head>
<body overflow: scroll;>
		<?php
			//por favor incluir este código en sus archivos php antes de cualquier contenido 
			include("menus.php");
			echo imprimir_menu();           
		?>
	
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3"></div>
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
			<div id="leer_escarapela">
						<div class="row">
							<div id="text" class="col-xs-12 col-md-12 alert alert-info"><p>Si no se lee el código antes de 10 segundos, digite aquí el documento. Solo números.</p></div>
						</div>
					<div class="row">
						<form action="ini-encuesta.php" method="get">	
							<div class="col-xs-12 hidden-xs  col-md-1"></div>
							<div class="col-xs-12 col-sm-7 col-md-6"><input type="text"  class="form-control" name="cc" placeholder="Doc."></div>
							<div class="col-xs-12 hidden-xs  col-md-1"></div>
							<div class="col-xs-12 col-sm-3 col-md-3"><input type="submit" class="btn btn-primary" value="Enviar" ></div>	
							<div class="col-xs-12 hidden-xs  col-md-1"></div>
						</form> 
					</div>
				</div>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-6"></div>
	</div>


		
	<div class="row" id="cuadro" >
		<div class="col-xs-12 hidden-xs col-md-4 "></div>	
		<div id="cuadro2" class="col-xs-12  col-md-6 ">
			<div id="altContent" align="center">
				<h1>Heprep</h1>
				<p>Alternative content</p>
				<p><a href="http://www.adobe.com/go/getflashplayer"><img 
					src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" 
					alt="Get Adobe Flash player" /></a></p>
			</div>
		</div>
		<div class="col-xs-12 hidden-xs col-md-2 "></div>
	</div>

</body>
</html>