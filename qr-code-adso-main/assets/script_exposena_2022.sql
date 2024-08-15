SET SQL_SAFE_UPDATES = 0;

show databases;
use bd_reg_entrada_2024a;

show tables;
select * from tb_encuestas;
select * from tb_preguntas;
select * from tb_posibles_respuestas;
select * from tb_personas_respuestas;

select * from tb_genero;

select * from tb_programas;
select * from tb_roles;
select * from tb_tipo_doc;


select * from tb_personas;
select * from tb_personas_registros;

#Pilas con este borrar.
delete from tb_personas;

#Script para dar respuesta a las encuestas.
select t1.titulo_encuesta, t1.descripcion_larga, t2.texto_pregunta, t3.texto_respuesta, t5.num_doc, t5.nombres, t5.apellidos  
from tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3, tb_personas_respuestas t4, tb_personas t5
where t1.id_encuesta = t2.id_encuesta 
and t2.id_pregunta = t3.id_pregunta 
and t3.id_posible_respuesta = t4.id_posible_respuesta 
and t4.num_doc = t5.num_doc
order by t5.nombres, t5.apellidos, t3.id_pregunta, t4.id_posible_respuesta; 






