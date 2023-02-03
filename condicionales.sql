CREATE TABLE user(
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    PRIMARY KEY (id)
);

INSERT INTO user (name, edad, email) values ('Oscar', 20, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Maria', 30, 'maria@gmail.com');
INSERT INTO user (name, edad, email) values ('Jose', 25, 'jose@gmail.com');
INSERT INTO user (name, edad, email) values ('Pepe', 17, 'pepe@gmail.com');

select * from user;
-- comando limit te devuelve solo el numero de valores que le pidas 
select * from user limit 1;
select * from user where edad > 17;
select * from user where edad >= 17;
select * from user where edad > 18 and email = 'jose@gmail.com';
select * from user where edad > 18 or email = 'pepe@gmail.com';
select * from user where email != 'pepe@gmail.com';
-- between significa que va a llamar los datos que esten entre dos parametros
select * from user where edad between 18 and 30; 
-- like significa que contenga la palabra pasada y % significa que da igual el principio
--  y el final por eso se pasa adelante y atras, tambien se puede pasar solo 1 vez 
select * from user where email like '%gmail%';
-- ordena todos los resultados por el atributo pasado y en el orden que le pasemos tanto asc o desc
select * from user order by edad asc;
-- vamos a buscar la mayor edad y lo mismo con min, despues del as se le pasa el sobrenombre a mostrar
select max(edad) as mayor from user;
-- selecciono solo los atributos que quiero mostrar
select id, name from user;
-- con as cambio de nombre al atributo
select id, name as nombre from user;