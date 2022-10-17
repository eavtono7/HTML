create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
id int,
tipo varchar(255),
estado varchar(255),
PRIMARY KEY (id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('Chanchito', 'Feliz');
-- esta linea no sera ejecutada

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ('Chanchito', 'Feliz');
INSERT INTO animales (tipo, estado) VALUES ('Dragon', 'Feliz');
INSERT INTO animales (tipo, estado) VALUES ('Felipe', 'Triste');

SELECT * FROM animales;
SELECT * FROM animales WHERE id=1;
SELECT * FROM animales WHERE estado='feliz'AND tipo='Felipe';

UPDATE animales SET estado='FELIZ' WHERE id=4;

SELECT * FROM animales;

DELETE FROM ANIMALES WHERE ESTADO='Feliz';

-- DELETE FROM ANIMALES WHERE ESTADO='Feliz'	
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a 
-- WHERE that uses a KEY column. 
DELETE FROM ANIMALES WHERE id=4;

SELECT * FROM animales;

DELETE FROM ANIMALES WHERE id=1;

UPDATE animales set estado='Triste' where tipo='Dragon';
-- esto tambien arroja error 1175