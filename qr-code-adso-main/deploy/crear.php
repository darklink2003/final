<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creación de Encuestas</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>

        .mt-10 {
            margin-top: 10px;
        }
        
        .input-group .btn {
            margin-left: 10px;
        }
        
        .card-body {
            padding: 20px;
        }
        
        .form-control,
        .form-select {
            margin-bottom: 10px;
        }
        
        hr {
            margin: 20px 0;
        }
    </style>
    <script>
        // Agrega una nueva pregunta al formulario
        function agregarPregunta() {
            const contenedor = document.getElementById('preguntas');
            const numPreguntas = contenedor.children.length;
            const nuevaPregunta = document.createElement('div');
            nuevaPregunta.classList.add('mb-10');
            nuevaPregunta.innerHTML = `
                <strong>Pregunta ${numPreguntas + 1}:</strong>
                <input type="text" class="form-control" name="preguntas[${numPreguntas}][texto]" placeholder="Texto de la pregunta" required>
                <button type="button" class="btn btn-secondary mt-10" onclick="agregarRespuesta(${numPreguntas})">Agregar Respuesta</button>
                <div id="respuestas-${numPreguntas}" class="mb-10"></div>
                <button type="button" class="btn btn-danger mt-10" onclick="eliminarPregunta(this)">Eliminar Pregunta</button>
                <hr>
            `;
            contenedor.appendChild(nuevaPregunta);
        }

        // Agrega una nueva respuesta a una pregunta específica
        function agregarRespuesta(preguntaIndex) {
            const contenedor = document.getElementById(`respuestas-${preguntaIndex}`);
            const numRespuestas = contenedor.children.length;
            const nuevaRespuesta = document.createElement('div');
            nuevaRespuesta.classList.add('input-group', 'mb-10');
            nuevaRespuesta.innerHTML = `
                <input type="text" class="form-control" name="preguntas[${preguntaIndex}][respuestas][${numRespuestas}]" placeholder="Texto de la respuesta" required>
                <button type="button" class="btn btn-danger" onclick="eliminarRespuesta(this)">Eliminar Respuesta</button>
            `;
            contenedor.appendChild(nuevaRespuesta);
        }

        // Elimina una pregunta del formulario
        function eliminarPregunta(boton) {
            boton.parentElement.remove();
        }

        // Elimina una respuesta de una pregunta específica
        function eliminarRespuesta(boton) {
            boton.parentElement.remove();
        }
    </script>
</head>

<body>
    <?php include("menus.php"); echo imprimir_menu(); ?>

    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center mb-4">Creación de Encuestas</h3>
                        <form action="guardar_creacion_encuesta.php" method="post">
                            <div class="mb-10">
                                <label for="titulo_encuesta" class="form-label">Título de la Encuesta</label>
                                <input id="titulo_encuesta" class="form-control" type="text" name="titulo_encuesta" required>
                            </div>

                            <div class="mb-10">
                                <label for="descripcion_larga" class="form-label">Descripción de la Encuesta</label>
                                <textarea id="descripcion_larga" class="form-control" name="descripcion_larga"></textarea>
                            </div>

                            <div class="mb-10">
                                <label for="sn_publicar" class="form-label">Publicar</label>
                                <select id="sn_publicar" class="form-select" name="sn_publicar">
                                    <option value="1">Sí</option>
                                    <option value="0">No</option>
                                </select>
                            </div>

                            <div id="preguntas">
                                <!-- Las preguntas se agregarán aquí dinámicamente -->
                            </div>

                            <button type="button" class="btn btn-success mt-10" onclick="agregarPregunta()">Agregar Pregunta</button>

                            <button type="submit" class="btn btn-primary mt-10">Guardar Encuesta</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
