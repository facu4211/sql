create table products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key(id),
    foreign key (created_by) references user(id)
);

-- renombrar una tabla
-- rename table products to product;

insert into products (name, created_by, marca)
values
	('ipad', 2, 'apple'),
    ('iphone', 2, 'apple'),
    ('watch', 3, 'apple'),
    ('macbook', 2, 'apple'),
    ('imac', 4, 'apple'),
    ('ipad mini', 2, 'apple');
    
select * from products;
-- hago un left join que es asociar una tabla con otra asi mostrar los productos que tiene cada usuario
-- esta relacion la realizo con "on u.id = p.created_by" que relaciono el id de user con la fk de la tabla products
-- el left join muestra todos los usuarios sin importar de que tengan productos o no 
select u.id, u.email, p.name from user u left join products p on u.id = p.created_by;
-- el right join es igual al left join lo unico que muestra solo los usuarios que tengan productos 
-- ya que la tabla base es la de products y va a buscar los usuarios que tengan productos
select u.id, u.email, p.name from user u right join products p on u.id = p.created_by;
-- el inner join mustra solo los objetos que tengan relacion con el objeto de la otra tabla 
select u.id, u.email, p.name from user u inner join products p on u.id = p.created_by;
-- muestra el producto cartesiano de cada tabla es decir que todos los productos estan en todos los usuarios
select u.id, u.name, p.id, p.name from user u cross join products p;
-- agrupo y cuento en este caso la cantidad de productos de la misma marca
select count(id), marca from products group by marca;
-- cuento cuantos productos a creado cada usuario
select count(p.id), u.name from products p left join user u on u.id = p.created_by group by p.created_by;
-- igual pero le paso una condicion a cumplir con el having, que cuenta la cantidad de producto
-- y muestra solo los usuarios con mas de dos productos creados
select count(p.id), u.name from products p left join user u 
on u.id = p.created_by group by p.created_by
having count(p.id) >= 2;
-- elimino una tabla
drop table product;

-- creada mediante diagrama
CREATE TABLE IF NOT EXISTS `mydb`.`user_1` (
  `id` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)