<?php
function insertar_usuario($num_doc,$nombres,$apellidos,$rol,$genero)
{

include('config.php');

$sql="INSERT INTO tb_personas (num_doc, nombres, apellidos, rol, genero, fecha_registro, sn_mostrar, sn_contar)";
$sql.="values ('$num_doc','$nombres','$apellidos','$rol','$genero', now(), 's', 's')";
$respuesta = $conexion->query($sql);
//echo "Se ha guardado " . $respuesta->rowcount() . " Registros con los siguientes datos:";
}

function insertar_registro($num_doc,$id_digitador)
{

include('config.php');

$sql="INSERT INTO tb_personas_registros (identif_1, identif_2, fec_reg)";
$sql.="values ('$num_doc','$id_digitador',now())";

$respuesta = $conexion->query($sql);

//echo "<br>Codigo de Digitador ". $id_digitador;
}

