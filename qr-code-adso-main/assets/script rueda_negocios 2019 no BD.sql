

DROP SCHEMA bd_entrada_rueda_negocios_2019;

CREATE SCHEMA bd_entrada_rueda_negocios_2019;

USE bd_entrada_rueda_negocios_2019;

SHOW TABLES;

DESCRIBE tb_personas;


SET SQL_SAFE_UPDATES=0;

DELETE FROM tb_personas;
DELETE FROM tb_personas_registros;
ALTER TABLE tb_personas_registros AUTO_INCREMENT = 1;

SELECT * FROm tb_genero;
SELECT * FROM tb_personas;
SELECT * FROM tb_personas_registros;
SELECT * FROm tb_roles;



DESCRIBE tb_roles;






