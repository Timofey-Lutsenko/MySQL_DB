create database if not exists shrimp;

drop table if exists products;
create table products(
	id serial primary key,
	name varchar(75) not null unique key,
	serial_num varchar(50) unique default(null),
	publisher varchar(75),
	description text,
	PEGI enum (
		'no PEGI',
		'PEGI 3',
		'PEGI 7',
		'PEGI 12',
		'PEGI 16',
		'PEGI 18'
	) default(0),
	ESRB enum (
		'no ESRB',
		'Rating Pending',
		'Early childhood',
		'Everyone',
		'Everyone 10 and older',
		'Teen',
		'Mature',
		'Adults Only 18+'
	) default(0),
	available_platforms enum(
		'Windows',
		'Linux',
		'MacOS',
		'MacOS, Linux',
		'Windows, Linux',
		'Windows, Linux, MacOS',
		'Windows, MacOS'
	),
	release_date date default(now()),
	discount tinyint not null default(0), -- в процентном значении.
	price decimal(19,2) not null,
	
	index publisher_idx(publisher),
	index date_publisher_idx(release_date, publisher),
	index age_rating_idx(PEGI, ESRB)
);

drop table if exists publisher;
create table publisher(
	id serial primary key,
	product_id bigint unsigned unique not null,
	product_status enum (
		'No data',
		'In developing',
		'Released'
	) default(1),
	product_type enum (
		'Software',
		'Programm',
		'Game',
		'DLC',
		'Plugin',
		'Digital art-book',
		'Soundtrack'
	),
	
	foreign key (product_id) references products(id)
	on update cascade
	on delete restrict
	
);

drop table if exists product_media;
create table product_media (
	id serial primary key,
	product_id bigint unsigned,
	description text,
	images varchar(255) default 'D:\Users\Admin\Main_files\main_001\no_image.jpeg',
	videos varchar(255) default 'D:\Users\Admin\Main_files\main_001\no_video.jpeg',
	
	foreign key (product_id) references products(id)
	on update cascade
	on delete restrict
);

drop table if exists users;
create table users(
	id serial primary key,
	first_name varchar(30),
	second_name varchar(30),
	email varchar(50) unique,
	nickname varchar(30), 
	pass_hash varchar(64),
	country varchar(64),
	birth_date date,
	bonus_level enum(
		'None',
		'Bronze',
		'Silver',
		'Gold',
		'Platinum'
	) default(1)
);

drop table if exists users_profiles;
create table users_profiles(
	id serial primary key,
	profile_id bigint unsigned not null,
	user_img varchar(255) default 'no image',
	created_at datetime default(now()),
	gender enum ('Male', 'Female'),
	user_info char(250) character set utf8 collate utf8_unicode_ci,
		
	foreign key (profile_id) references users(id)
	on update cascade
	on delete restrict
);

drop table if exists forum;
create table forum(
	id serial primary key,
	topic varchar(25),
	messadge text,
	from_user_id bigint unsigned not null,
	images varchar(225) default(null),
	
	foreign key (from_user_id) references users(id)
);


drop table if exists user_rewiews;
create table user_rewiews (
	id serial primary key,
	prod_id bigint unsigned,
	user_id bigint unsigned,
	rewiew_text text,
	
	foreign key (prod_id) references products(id)
	on update cascade
	on delete restrict,
	foreign key (user_id) references users(id)
	on update cascade
	on delete restrict
);

drop table if exists library;
create table library(
	id serial primary key,
	which_user_id bigint unsigned not null,
	product_id bigint unsigned not null,
	status enum ('wishlist', 'ordered', 'acquired'),
	acquired_date date default(now()),
	
	foreign key (which_user_id) references users(id)		
	on update cascade
	on delete restrict,
	foreign key (product_id) references products(id)
	on update cascade
	on delete restrict
);

drop table if exists publishers;
create table publishers(
	id serial primary key,
	id_publisher bigint unsigned not null,
	name varchar(75) unique not null,
	released_products int unsigned,
	location varchar(50),
	about text,
	date_of_establishment date,
	
	foreign key (id_publisher) references publisher(id)
	on update cascade
	on delete restrict
);

drop table if exists general_analitycs;
create table general_analitycs(
	sold_date datetime,
	sold_copies bigint unsigned not null,
	sold_type_software varchar(25),	
	region varchar(75)
) engine = archive;

