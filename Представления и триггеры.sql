-- Представление полной информации о продукте, включающее:
-- Дату релиза, имя издателя, имя продукта, возрастные ограничения, 
-- краткое описание и обзоры от пользователей, тип продукта и статус релиза,
-- а так же изображения и/или видеоролики от издателя.

select distinct 
	prod_info.name, prod_info.publisher, 
	prod_info.description, prod_info.ESRB, 
	prod_info.PEGI, prod_info.available_platforms,
	publisher_info.product_status, publisher_info.product_type,
	prod_media.images, prod_media.videos,
	us_rew.rewiew_text 
from products as prod_info 
inner join publisher as publisher_info 
inner join product_media as prod_media  
inner join user_rewiews as us_rew 
on 
	prod_info.id = publisher_info.id 
	and publisher_info.id = prod_media.id 
	and prod_media.id = us_rew.id
;

-- Результирующая страница всю информацию об издателе и ссылки на продукты издателя.

select distinct 
	publisher_main.name, publisher_main.location, 
	publisher_main.about, publisher_main.date_of_establishment, 
	publisher_sub.product_id, publisher_sub.product_status, publisher_sub.product_type 
from publishers as publisher_main 
join publisher as publisher_sub 
on publisher_main.id_publisher = publisher_sub.id;


-- Представление минимальной информации для ознакомления пользователя с продуктом, 
-- включающее имя, описание и статус релиза.

create or replace view name_desc_status (name, description, product_status) 
as select products.name, product_media.description, publisher.product_status 
from products, product_media, publisher 
where products.id = product_media.product_id; 

-- Представление информации с пользовательской странички.

create or replace view user_page (name, nickname, country, bonus_level, gender, avatar) 
as select users.first_name, users.nickname, users.country,users.bonus_level, users_profiles.gender, users_profiles.user_img 
from users, users_profiles 
where users.id = users_profiles.profile_id; 

-- служебное представление, созданное для выборки информации для заполнения таблицы publishers. 

create or replace view tmp_pub_prod (name, publisher, product_id) 
as select products.name, products.publisher, publisher.product_id 
from products, publisher
where products.id = publisher.product_id; 

-- Вывод представлений.
select distinct * from name_desc_status;
select distinct * from user_page;
select distinct * from tmp_pub_prod 
order by product_id;

-- Триггеры для заполнения архива general_analitycs.

drop trigger if exists region_filler;
delimiter //
create trigger region_filler after insert on library
for each row
begin 
	begin 
		set @pr_type = '0';
		set @region = '0'; 
		select product_type  from publisher into @pr_type;
		select country from users into @region;
			if @pr_type = 'Software' 
			then
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(), 'Software', @region);
			elseif @pr_type = 'Programm'
			then
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(),'Programm', @region);
			elseif @pr_type = 'Game' 
			then
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(), 'Game', @region);
			elseif @pr_type = 'DLC' 
			then
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(), 'DLC', @region);
			elseif @pr_type = 'Plugin' 
			then
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(), 'Plugin', @region);
			elseif @pr_type = 'Digital art-book'
			then
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(), 'Digital art-book', @region);
			else
				insert into general_analitycs (sold_copies, sold_date, sold_type_software, region)
				values ('1', now(), 'Soundtrack', @region);
			end if;
	end;
end //
delimiter ;

