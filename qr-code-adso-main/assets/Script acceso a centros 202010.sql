
SHOW DATABASES;
USE bd_reg_entrada_202010;
SHOW TABLES;
delete from tb_personas_respuestas;
SET SQL_SAFE_UPDATES=0;

DELETE FROM tb_personas;
SELECT * FROM tb_personas;
SELECT * FROM tb_personas WHERE nombres LIKE '%brayan%';
SELECT COUNT( * ) FROM tb_personas;
SELECT * FROM tb_encuestas;
SELECT * FROM tb_preguntas;
SELECT * FROM tb_posibles_respuestas;
SELECT * FROM tb_personas_respuestas;
SELECT * FROM tb_personas_registros ORDER BY fec_reg DESC;
SELECT * FROM tb_roles;
SELECT * FROM tb_genero;
SELECT COUNT( cod_genero ) AS conteo FROM tb_genero t1 WHERE t1.cod_genero = '14';

delete from tb_roles WHERE cod_rol >= 7;

SELECT * FROM tb_encuestas WHERE id_encuesta = 2 ORDER BY fecha_registro DESC LIMIT 1 ;

SELECT * FROM tb_preguntas ORDER BY id_pregunta WHERE id_encuesta = 2;

DELETE FROM tb_personas_respuestas;

SELECT t1.titulo_encuesta, t2.id_pregunta, t2.texto_pregunta, t3.*, 
( SELECT COUNT( * ) FROM tb_personas_respuestas t4 WHERE t3.id_posible_respuesta = t4.id_posible_respuesta ) AS respuesta
FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3
WHERE t1.id_encuesta = t2.id_encuesta 
AND t2.id_pregunta = t3.id_pregunta
AND t1.id_encuesta = 2
ORDER BY t2.id_pregunta, t3.id_posible_respuesta, t3.texto_respuesta;

SELECT t1.titulo_encuesta, t2.texto_pregunta, t3.*, t4.*
FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3, tb_personas_respuestas t4
WHERE t1.id_encuesta = t2.id_encuesta 
AND t2.id_pregunta = t3.id_pregunta
AND t3.id_posible_respuesta = t4.id_posible_respuesta
ORDER BY t4.num_doc, t2.id_pregunta, t3.id_posible_respuesta, t3.texto_respuesta;

#Reporte de Excel
SELECT t4.fecha_registro, t6.desc_tipo_doc, t5.num_doc, t5.nombres, t5.apellidos, t1.titulo_encuesta, t2.texto_pregunta, t3.texto_respuesta
FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3, tb_personas_respuestas t4, tb_personas t5, tb_tipo_doc t6
WHERE t1.id_encuesta = t2.id_encuesta 
AND t2.id_pregunta = t3.id_pregunta
AND t3.id_posible_respuesta = t4.id_posible_respuesta
AND t4.num_doc = t5.num_doc
AND t5.cod_tipo_doc = t6.cod_tipo_doc
ORDER BY t4.fecha_registro DESC, t4.num_doc, t2.id_pregunta, t3.id_posible_respuesta, t3.texto_respuesta;

#Table11 es la tabla que contiene la información en CSV.
SELECT * FROM table12;
SELECT * FROM table12 WHERE cod_rol is null;
SELECT COUNT(*) FROM table12;
DESCRIBE table12;

#Trabajando con roles ----------------------------------------------------------
SELECT * FROM tb_roles;
SELECT COUNT( * ) FROM tb_roles;
DELETE FROM tb_roles;
ALTER TABLE tb_roles AUTO_INCREMENT = 1;
DESCRIBE tb_roles;
INSERT INTO tb_roles VALUES( '0', 'Otro' );

SELECT COUNT( DISTINCT `COL 4` ) FROM table12 ORDER BY `COL 4`;

#Se insertaron los roles.
INSERT INTO tb_roles ( cod_rol, desc_rol )
SELECT DISTINCT null, CONVERT( `COL 4` USING utf8) FROM table12 ORDER BY `COL 4`;

#Actualizando roles.
UPDATE table12 t1, tb_roles t2
SET t1.cod_rol = t2.cod_rol
WHERE `COL 4` = t2.desc_rol;

#Trabajando con tipos de documento
SELECT * FROM tb_tipo_doc;
SELECT * FROM table12 t1, tb_tipo_doc t2 WHERE t2.desc_tipo_doc = `COL 2`;

SELECT COUNT( * ) FROM table12 t1, tb_tipo_doc t2 
WHERE LOWER( TRIM( REPLACE( t2.desc_tipo_doc, '.', '' ) ) ) = LOWER( TRIM( `COL 2` ) )
OR LEFT( LOWER( TRIM( REPLACE( t2.desc_tipo_doc, '.', '' ) ) ), 1) = LEFT( LOWER( TRIM( `COL 2` ) ), 1);

UPDATE table12 t1, tb_tipo_doc t2 
SET t1.cod_tipo_doc = t2.cod_tipo_doc
WHERE LOWER( TRIM( REPLACE( t2.desc_tipo_doc, '.', '' ) ) ) = LOWER( TRIM( `COL 2` ) )
OR LEFT( LOWER( TRIM( REPLACE( t2.desc_tipo_doc, '.', '' ) ) ), 1) = LEFT( LOWER( TRIM( `COL 2` ) ), 1);

SELECT * FROM table12 WHERE cod_tipo_doc is null;

SELECT * FROM table12 WHERE REPLACE( TRIM( `COL 2` ), '.', '' ) NOT IN ( SELECT DISTINCT desc_tipo_doc FROM tb_tipo_doc );

SELECT REPLACE( 'T.I', '.', '' );
SELECT LOWER( 'A' );
SELECT * FROM tb_genero;

#Ahora las personas.
DELETE FROM tb_personas;
SELECT * FROM tb_personas;
SELECT COUNT( * ) FROM tb_personas;
DESCRIBE tb_personas;

#Perfecto, inserción de personas.
INSERT INTO tb_personas
SELECT REPLACE( TRIM( REPLACE( `COL 3`, '.', '' ) ), ' ', '' ), `COL 1`, '', 'S', 'S', '', NOW(), cod_rol, cod_tipo_doc, 14, 0
FROM table12;

SELECT INSTR( 'aaaa', 'a' );
SELECT `COL 3` FROm table12 WHERE INSTR( `COL 3`, '.' ) > 0;

