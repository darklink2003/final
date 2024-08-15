<?php 

	include( "nucleo.php" );
	$obj_nucleo = new nucleo();

	//por favor incluir este código en sus archivos php antes de cualquier contenido 
	include("menus.php");

    $tamano_letra = "25";

?>

<html>
    <head>
        <title><?= $obj_nucleo->imprimir_titulo_pagina( "Estad&iacute;sticas " ) ?></title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">   
        <link rel="shortcut icon" href="expo12.png" type="image/png" />
    </head>

    <body>
        
        <?= imprimir_menu() ?>
        
        <br><br>
        <div class="row">
            <div class="col-xs-12 col-md-12 col-lg-1 "></div>
            <div class="col-xs-12 col-md-12 col-lg-1 ">
                <!-- Se invalida este reporte porque por el servidor Apache y PHP ya no es posible generar los Excel -->
                <!--<a href="reporteexcel_tabla.php">
                    <input class="btn btn-md btn-primary btn-block" type="submit" value="Registrados">
                </a>-->
            </div>
            <div class="col-xs-12 col-md-12 col-lg-8 well">
                <div class="row">
                    <div id="title_estadistica" class="col-xs-12 col-md-12 col-lg-12 alert alert-info">
                        <center><b>ESTADISTICAS</b></center></div>
                    </div>
                <!--********************************************************************* -->
                <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla perosnas registradas--> 
                                    <b>Personas registradas: </b>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12 col-lg-12 "><!-- Este td contiene el conteo perosnas registradas--> 
                                        <?= $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( * )", "conteo", "tb_personas" ) ?>
                                        </div>
                                    </div>
                        </div>

                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla visitas--> 
                                    <b>Visitas: </b>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12 col-lg-12 "><!-- Este td contiene el conteo de visitas--> 
                                            <?= $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( * )", "conteo", "tb_personas_registros" ) ?></div>
                                        </div>
                        </div>
                </div>
                
                <!--********************************************************************* -->
                <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla registrados por dias--> 
                                    <b>Registrados por d&iacute;a: </b>
                            <div class="row">
                            <div class="col-xs-12 col-md-8 col-lg-8 "><!-- Este td contiene el conteo por dias de  registrados por dias-->  
                                        <?= $obj_nucleo->retornar_conteo_tabla( "tb_personas" ) ?><br>
                            </div></div>            

                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla visitas por dias--> 
                                    <b>Visitas por d&iacute;a:  </b>
                        <div class="row">
                            <div class="col-xs-12 col-md-8 col-lg-8 "><!-- Este td contiene el conteo por dias de  visitas por dias-->
                                    <?= $obj_nucleo->retornar_conteo_tabla( "tb_personas_registros", "fec_reg" ) ?><br>
                            </div>
                        </div>
                        </div>
                </div>
                
                <!--********************************************************************* -->
                <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla registrados por dias--> 
                                    <b>Personas y roles: </b>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12 col-lg-12 "><!-- Este td contiene el conteo por dias de  registrados por dias-->  
                                                <?= $obj_nucleo->retornar_conteo_roles() ?><br>
                                        </div>
                                    </div>
                        </div>

                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla visitas por dias--> 
                                    <b>Personas y roles por fecha: </b>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12 col-lg-12 "><!-- Este td contiene el conteo por dias de  visitas por dias-->
                                                <?= $obj_nucleo->retornar_conteo_roles( "fecha_registro" ) ?><br>   
                                        </div>
                                    </div>
                        </div>
                </div>
                        
                <!--********************************************************************* -->
                <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla registrados por dias--> 
                                    <b>Personas que respondieron encuestas: </b>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene el conteo por dias de  registrados por dias-->  
                                                <?= $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( DISTINCT num_doc )", "conteo", "tb_personas_respuestas" ) ?><br></div>
                                    </div>
                        </div>

                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla visitas por dias--> 
                                    <b>Personas que respondieron encuestas por d&iacute;a: </b>
                                <div class="row">
                                    <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene el conteo por dias de  visitas por dias-->
                                    <?= $obj_nucleo->retornar_conteo_tabla( "tb_personas_respuestas", "fecha_registro", "COUNT( DISTINCT num_doc )" ) ?><br>   
                                    </div>
                                </div>
                        </div>
                </div>
                <!--********************************************************************* -->
                <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla registrados por dias--> 
                                    <b>Preguntas respondidas: </b>
                                <div class="row">
                                        <div class="col-xs-12 col-md-8 col-lg-8 "><!-- Este td contiene el conteo por dias de  registrados por dias-->  
                                                    <?= $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( * )", "conteo", "tb_personas_respuestas" ) ?><br></div>
                                </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-6 "><!-- Este td contiene la palabla visitas por dias--> 
                                    <b>Pregutas respondidas por d&iacute;a: </b>
                                <div class="row">
                                        <div class="col-xs-12 col-md-8 col-lg-8 "><!-- Este td contiene el conteo por dias de  visitas por dias-->
                                                <?= $obj_nucleo->retornar_conteo_tabla( "tb_personas_respuestas" ) ?><br>   
                                        </div>
                                </div>
                        </div>
                </div>
                    
                

                <!-- Se invalida este reporte porque por el servidor Apache y PHP ya no es posible generar los Excel -->
                <!--<a href="reporteexcel_tabla.php">
                    <input class="btn btn-md btn-primary btn-block" type="submit" value="Generar estadistica">
                </a>-->
            </div>
            <div class="col-xs-12 col-md-12 col-lg-2 ">
                
            </div>
        </div>
        </div>

    </body>

</html>