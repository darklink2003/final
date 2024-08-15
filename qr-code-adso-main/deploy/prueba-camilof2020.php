<?php

    /*include( "Encuesta.php" );
    $obj_encuesta = new Encuesta();
        
    echo $obj_encuesta->retornar_combinaciones_preguntas( 2 );*/
    
    include( "nucleo.php" );
    $obj_nucleo = new nucleo();
    
    
    echo $obj_nucleo->conteo_genero( "cod_genero", 14 );
    