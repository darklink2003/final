<?php

    /*Esta conexión se realiza para la prueba con angularjs*/
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include( "nucleo.php" );
    $obj_nucleo = new nucleo();
    
    /*$conexion = new mysqli("localhost", "root", "", "bd_museo_fotografico");

    $resultado = $conexion->query( "SELECT * FROM tb_organismos WHERE nombre_comun LIKE '%".$_GET[ 'cadena' ]."%' LIMIT 5 " );

    $outp = "";

    while( $rs = $resultado->fetch_array( MYSQLI_ASSOC )) 
    {
        if ( $outp != "" ) { $outp .= ","; }
        $outp .= '{"Id":"'.$rs["id_organismo"].'",';
        $outp .= '"Nombre":"'.utf8_encode( $rs["nombre_comun"] ).'",';
        $outp .= '"Localidad":"'.$rs["localidad"].'"}';
    }

    $outp ='{"records":['.$outp.']}';
    $conexion->close();*/
    
    //echo '{"records":[{"nombres": "123"}}]';

    echo $obj_nucleo->consultar_info_tecleando( $_GET[ 'cadena' ] );
?> 