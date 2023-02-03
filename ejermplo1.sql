-- Creo la base de datos y le llamo curso 
create database curso;
-- visualizo todas las bases de datos creadas y me aseguro que se haya creado
show databases;
-- comando use para elegir la base de datos en la cual voy a crear la tabla
use curso;
-- creo la tabla animales y le paso los atributos, defino el tipo de cada atributo y la PK
create table Animales(
	id int,
    tipo varchar(255),
    estado varchar(255),
    primary key (id)
);

-- comando para insertar valores a la tabla
-- INSERT INTO Animales (tipo, estado) VALUES ('chanchito', 'feliz');
-- comando para definir el id como auto number
ALTER TABLE Animales MODIFY COLUMN id int auto_increment;
-- visualizo la tabla
SHOW CREATE TABLE Animales;
-- veo como se ve la tabla 
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO Animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO Animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO Animales (tipo, estado) VALUES ('Felipe', 'triste');
-- selecciono todos los datos de la tabla animales 
SELECT * FROM Animales;
-- selecciono todos los datos de la tabla animales pero solo del id = 1
SELECT * FROM Animales where id = 1;
-- selecciono todos los datos de la tabla animales pero solo las que cumplen las condiciones
SELECT * FROM Animales where estado = 'feliz' AND tipo = 'chanchito';
-- mediante el comando update y set le digo que campo quiero actualizar mientras cumpla con el where
UPDATE Animales SET estado = 'feliz' where id = 4;

SELECT * FROM Animales;
-- tanto como para eliminar un objeto o actualizar el where debe pasar un id, no se le puede pasar otro valor por ejemplo el estado
DELETE FROM Animales where id = 1;
SELECT * FROM Animales;
-- arrojara error ya que sele pasa el tipo y no el id
UPDATE Animales SET estado = 'feliz' where tipo = 'dragon';



