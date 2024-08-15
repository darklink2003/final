<?php
include("config.php");

// Crear la conexión
$conn = new mysqli($servidor, $usuario, $clave, $bd);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener y sanitizar la entrada
$titulo_encuesta = isset($_POST['titulo_encuesta']) ? $_POST['titulo_encuesta'] : '';
$descripcion_larga = isset($_POST['descripcion_larga']) ? $_POST['descripcion_larga'] : '';
$sn_publicar = isset($_POST['sn_publicar']) ? intval($_POST['sn_publicar']) : 0;
$fecha_registro = date('Y-m-d H:i:s');

// Insertar encuesta
$sql = "INSERT INTO tb_encuestas (titulo_encuesta, descripcion_larga, sn_publicar, fecha_registro) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('ssis', $titulo_encuesta, $descripcion_larga, $sn_publicar, $fecha_registro);

if ($stmt->execute()) {
    $id_encuesta = $stmt->insert_id;  // Obtener el ID de la encuesta insertada
} else {
    echo "Error al insertar la encuesta: " . $stmt->error;
    exit;
}

// Insertar preguntas y respuestas
$preguntas = isset($_POST['preguntas']) ? $_POST['preguntas'] : array();

foreach ($preguntas as $index => $pregunta) {
    $texto_pregunta = isset($pregunta['texto']) ? $pregunta['texto'] : '';
    $fecha_registro = date('Y-m-d H:i:s');
    
    // Insertar pregunta
    $sql = "INSERT INTO tb_preguntas (texto_pregunta, fecha_registro, id_encuesta) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ssi', $texto_pregunta, $fecha_registro, $id_encuesta);
    
    if ($stmt->execute()) {
        $id_pregunta = $stmt->insert_id;  // Obtener el ID de la pregunta insertada
        
        // Insertar respuestas para esta pregunta
        $respuestas = isset($pregunta['respuestas']) ? $pregunta['respuestas'] : array();
        
        foreach ($respuestas as $respuesta) {
            $texto_respuesta = $respuesta;
            $fecha_registro = date('Y-m-d H:i:s');
            
            $sql = "INSERT INTO tb_posibles_respuestas (texto_respuesta, fecha_registro, id_pregunta) VALUES (?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('ssi', $texto_respuesta, $fecha_registro, $id_pregunta);
            if (!$stmt->execute()) {
                echo "Error al insertar respuesta: " . $stmt->error;
            }
        }
    } else {
        echo "Error al insertar pregunta: " . $stmt->error;
    }
}
header("Location: index.php");
$stmt->close();
$conn->close();
?>
