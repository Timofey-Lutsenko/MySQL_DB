-- Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products 
-- в таблицу logs помещается время и дата создания записи, название таблицы, 
-- идентификатор первичного ключа и содержимое поля name.

create table logs(
	created_at datetime,
	tbl_name
	id_primary
	name_field
) engine = archive; 


-- Реализовывать решил через триггеры для каждой таблицы.

drop trigger if exists users_log;
delimiter //
create trigger users_log after insert on users
for each row 
begin
	insert into logs (created_at, tble_name, id_primary, name_field)
	values (NOW(), 'users', NEW.id, NEW.name);
end //

drop trigger if exists catalog_log;
delimiter //
create trigger catalog_log after insert on catalogs
for each row 
begin
	insert into logs (created_at, tble_name, id_primary, name_field)
	values (NOW(), 'catalogs', NEW.id, NEW.name);
END //

drop trigger if exists prod_log;
delimiter //
create trigger prod_log after insert on products
for each row 
begin
	insert into logs (created_at, tble_name, id_primary, name_field)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //


-- В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
SADD ip '127.0.0.1' '127.0.0.2' '127.0.0.3'
-- Пробую добавить уже внесенный адрес. Нельзя добавить уже имеющийся ip адрес в коллекции.
SADD ip '127.0.0.1' 
-- Проверяю список уникальных ай-пи адресов
SMEMBERS ip
-- кол-во адресов в коллекции
SCARD ip

-- При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
-- Так как Redis позволяет использовать поиск только по ключу, я использую попеременно имя и почту как ключ.
set oleggdemaket@exmail.com oleg 
set oleg oleggdemaket@exmail.com

get oleggdemaket@exmail.com
get oleg

-- Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
drop database if exists products;
create database products;
use products;

db.products.insert({"name": "Intel Core i3-8100", "prod_description": "Процессор для персонального компьюитера.", "price": "8000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}) 

db.products.insertMany([
	{"name": "AMD FX-8020", "prod_description": "Процессор для персонального компьюитера.", "price": "4000.00", "catalog_id": "Процессоры", "created_at": date(now()), "updated_at": date(now())},
	{"name": "AMD FX-8450E", "prod_description": "Процессор для персонального компьюитера.", "price": "4500.00", "catalog_id": "Процессоры", "created_at": date(now()), "updated_at": date(now())}])

db.products.find().pretty()
db.products.find({name: "intel Core i3-8100"}).pretty()

drop database if exists catalogs;
create database catalogs;
use catalogs;
db.catalogs.insertMany([{"name": "Процессоры"}, {"name": "Мат.платы"}, {"name": "Видеокарты"}])



