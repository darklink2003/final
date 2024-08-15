<?php

    /**
     * Autor: Camilo Figueroa ( Crivera )
     * Esta clase se crea para tratar de organizar todo.
     *
     */

    class Datos
    {
        /**
         * Método que retorna el SQL del reporte actual para registros Covid 20201005
         * @return      texto       Un texto sql que representa un reporte.
         */
        public static function sql_reporte_encuestados()
        {
            $sql  = " SELECT t4.fecha_registro, t6.desc_tipo_doc, t5.num_doc, t5.nombres, t5.apellidos, t1.titulo_encuesta, t2.texto_pregunta, t3.texto_respuesta ";
            $sql .= " FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3, tb_personas_respuestas t4, tb_personas t5, tb_tipo_doc t6 ";
            $sql .= " WHERE t1.id_encuesta = t2.id_encuesta  ";
            $sql .= " AND t2.id_pregunta = t3.id_pregunta ";
            $sql .= " AND t3.id_posible_respuesta = t4.id_posible_respuesta ";
            $sql .= " AND t4.num_doc = t5.num_doc ";
            $sql .= " AND t5.cod_tipo_doc = t6.cod_tipo_doc ";
            $sql .= " ORDER BY t4.fecha_registro DESC, t4.num_doc, t2.id_pregunta, t3.id_posible_respuesta, t3.texto_respuesta; ";
            
            return $sql;
        }
        
    }
    