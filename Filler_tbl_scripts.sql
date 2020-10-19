-- Скрипты заполнения БД.

insert into products (
	name, serial_num, publisher, 
	description, PEGI, ESRB, 
	available_platforms,release_date,
	discount, price)
values 
	('Borderlands 3','FT23-GRA3-3452-GRT4','2K', 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds & enemies and save your home from the most ruthless cult leaders in the galaxy.', '1', '7', '1', '2020-03-13', '0', 1999.00),
	('Elite Dangerous', 'FP34-QQRT-DG3G-45SD', 'Frontier Developments', 'Take control of your own starship in a cutthroat galaxy. Elite Dangerous brings gaming’s original open world adventure into the modern generation with a connected galaxy, evolving narrative and the entirety of the Milky Way re-created at its full galactic proportions.', '2', '5', '0', '2015-04-02', 0, 999.00),
	('Neverwinter Nights: Enhanced Edition', '234F-34DS-334G-5HTF', 'Beamdog', 'Return to the Forgotten Realms in this bestselling Dungeons & Dragons roleplaying game. Combines all the content of Neverwinter Nights Diamond Edition with all-new enhanced features. Includes 100+ hours of award-winning adventures and the tools to create your own!', '1', '7', '5', '2018-03-27', 0, 435.00),
	('Hollow Knight - Official Soundtrack', default, 'Team Cherry', 'Это дополнительный контент для Hollow Knight, но он не включает базовую версию игры.', '1', '1', '5', '2017-02-24', 0, 249.00),
	('LobotomyCorporation_ArtBook', default, 'Project Moon', 'Для запуска требуется Shrimp-версия игры Lobotomy Corporation | Monster Management Simulation.', '1', '1', '1', '2018-04-09', 0, 259.00),
	('Terraria: Official Soundtrack', default, 'Re-Logic', 'Это дополнительный контент для Terraria, но он не включает базовую версию игры.', '1', '1', '1', '2015-10-13', 0, 133.00),
	('Deep Rock Galactic - Original Soundtrack Volume I + II', default, 'Coffee Stain Publishing', 'Это дополнительный контент для Deep Rock Galactic, но он не включает базовую версию игры.', '1', '1', '1', '2018-02-28', 0, 250.00),
	('The Witcher 3: Wild Hunt Soundtrack', default, 'CD PROJEKT RED', 'Это дополнительный контент для The Witcher® 3: Wild Hunt, но он не включает базовую версию игры.', '1', '1', '1', '2020-02-11', 0, 250.00),
	('Sid Meier`s Civilization® VI: Gathering Storm', '7F3D-3TG5-GF45-F3S5', '2K, Aspyr (Mac), Aspyr (Linux)', 'Для запуска требуется Shrimp-версия игры Sid Meier’s Civilization® VI.', '3', '4', '5', '2019-02-14', 0, 700.00),
	('Endless Legend™ - Emperor Edition', '344R-4GHD-53H4-H56J', 'SEGA', 'Endless Legend — глобальная пошаговая стратегия от создателей Endless Space и Dungeon of the Endless. Спасите свой родной мир, Ауригу, управляя всеми аспектами развития своей цивилизации. Создайте собственную легенду!', '3', '4', '6', '2014-09-18', 0, 750.00),
	('Total War: WARHAMMER II - The Shadow & The Blade', 'FW23-F435-G5D5-23A3', 'SEGA, Feral Interactive (Mac), Feral Interactive (Linux)', 'Для запуска требуется Steam-версия игры Total War: WARHAMMER II.', '4', '0', '5', '2019-12-12', 0, 359.00),
	('Stellaris', 'VE6R-Y9G4-8OOD-G4ME', 'Paradox Interactive', 'Окунитесь в исследование изменчивой вселенной, полной чудес! Paradox Development Studio, создатели Europa Universalis и Crusader Kings, а также издатели Cities: Skylines представляют Stellaris, новую веху в жанре глобальных стратегий.', '2', '4', '5', '2019-03-14', 0, 699.00),
	('Total War: WARHAMMER II', 'F334-G43G-4H56-H53R', 'SEGA, Feral Interactive (Mac), Feral Interactive (Linux)', 'Игра Total War: WARHAMMER II, которая является продолжением культовой Total War: WARHAMMER, включает в себя новую захватывающую кампанию, посвященная освоению и покорению Нового Света.', '1', '4', '5', '2017-09-28', 0, 2489.00),
	('Sundered®: Eldritch Edition', '3RGT-234F-3TDF-3F2D', 'Thunder Lotus Games', 'Sundered — это нарисованная от руки хаотическая метроидвания, где нужно бороться с древними ужасными силами или смириться с ними. Сражайтесь с волнами страшных врагов в постоянно меняющемся мире, вдохновленном книгами Г.П. Лавкрафта.', '3', '4', '5', '2019-03-14', 0, 435.00),
	('Pixel FX Designer', default, 'Manuel Jesús Bolaños Gómez', 'With Pixel FX Designer you can create awesome particle effects with the ability to giving them a pixelart feel by tweaking several options and render them to .png sprite sheets or .gifs.', '1', '1', '1', '2018-10-01', 0, 435.00),
	('VEGAS Movie Studio 16 Platinum Shrimp Edition', '3F4G-75H6-F7T5-FH56', 'MAGIX Software GmbH', 'Create breathtaking videos with video editing program VEGAS Movie Studio 16 Platinum Shrimp Edition and create one-of-a-kind sounds with Music Maker. Create professional-level movies with powerful VEGAS technology!', '1', '1', '1', '2019-03-14', 0, 4300.00),
	('VEGAS Pro 16 Edit Shrimp Edition', '23FD-G5HJ-45FD-5FG6', 'MAGIX Software GmbH', 'VEGAS Pro 16 Edit – Shrimp Edition enables you to make your projects a reality, faster than ever before. With innovative editing tools integrated into a fully customizable interface, the software offers true creative freedom for bringing your gaming videos to a whole new level.', '1', '1', '1', '2018-09-03', 0, 19999.00),
	('Movavi Video Suite 2020 Steam Edition - - Video Making Software', 'FE34-FR23-T567-F344', 'Movavi', 'Movavi Video Suite 2020 Steam Edition – это набор инструментов для создания и монтажа видео в одном приложении. С ними вы смонтируете красочные клипы и сможете записывать экран в высоком качестве, конвертировать записи геймплея и другие файлы.', '1', '1', '1', '2019-12-20', 0, 1990.00),
	('FPS Monitor – hardware in-game & desktop overlays', default, 'Eduard Kozadaev', 'FPS Monitor отслеживает состояние вашего ПК и отображает эту информацию в качестве игрового оверлея или поверх рабочего стола. Не требует настройки, работает сразу после установки.', '1', '1', '1', '2017-02-23', 0, 377.00),
	('S2ENGINE HD', '52DF-S2EF-S2AS-F3G3', 'Profenix Studio SRLS', 'S2 ENGINE HD это полный набор программного обеспечения для разработки и запуска видеоигр, специально предназначенный для любителей компьютерных игр и энтузиастов. Простота S2 ENGINE HD позволяет им включать свои компьютеры и создавать шедевры.', '1', '1', '1', '2016-04-09', 0, 419.00)
;


insert into publisher(product_id, product_status, product_type) 
values 	
	('1', '3' ,'3'), ('2', '3', '3'), ('3', '3', '3'),
	('4', '3', '7'), ('5', '3', '6'), ('6', '3', '7'),
	('7', '3', '7'), ('8', '3', '7'), ('9', '3', '4'),
	('10', '3', '3'), ('11', '3', '4'), ('12', '3', '3'),
	('13', '3', '3'), ('14', '3', '3'), ('15', '3', '2'),
	('16', '3', '1'), ('17', '3', '1'), ('18', '3', '2'),
	('19', '3', '2'), ('20', '3', '2')
;


insert into product_media (product_id, description, images, videos)
values 
	('1', 'Great detailed description', 'D:\Users\Admin\Publisher_files\publisher_001\pub_img_001', 'D:\Users\Admin\Publisher_files\publisher_001\pub_video_001'),
	('2', 'Great detailed description', 'D:\Users\Admin\Publisher_files\publisher_002\pub_img_002', 'D:\Users\Admin\Publisher_files\publisher_002\pub_video_002'),
	('3', 'Too colorful description', 'D:\Users\Admin\Publisher_files\publisher_003\pub_img_003', 'D:\Users\Admin\Publisher_files\publisher_003\pub_video_003'),
	('4', 'Great detailed description', 'D:\Users\Admin\Publisher_files\publisher_004\pub_img_004', default),
	('5', 'Family Dinner Description', 'D:\Users\Admin\Publisher_files\publisher_005\pub_img_005', default),
	('6', 'Modest and inaccurate description', 'D:\Users\Admin\Publisher_files\publisher_006\pub_img_006', default),
	('7', 'Great detailed description', 'D:\Users\Admin\Publisher_files\publisher_007\pub_img_007', default),
	('8', 'Description of the Red-eared Turtle', 'D:\Users\Admin\Publisher_files\publisher_008\pub_img_008', default),
	('9', 'Modest and inaccurate description', 'D:\Users\Admin\Publisher_files\publisher_009\pub_img_009', default),
	('10', 'Description worthy of god', 'D:\Users\Admin\Publisher_files\publisher_010\pub_img_010', 'D:\Users\Admin\Publisher_files\publisher_010\pub_video_010'),
	('11', 'Family Dinner Description', 'D:\Users\Admin\Publisher_files\publisher_011\pub_img_011', 'D:\Users\Admin\Publisher_files\publisher_011\pub_video_011'),
	('12', 'Description of the Red-eared Turtle', 'D:\Users\Admin\Publisher_files\publisher_012\pub_img_012', 'D:\Users\Admin\Publisher_files\publisher_012\pub_video_012'),
	('13', 'Description of the Red-eared Turtle', 'D:\Users\Admin\Publisher_files\publisher_013\pub_img_013', 'D:\Users\Admin\Publisher_files\publisher_013\pub_video_013'),
	('14', 'Too colorful description', 'D:\Users\Admin\Publisher_files\publisher_014\pub_img_014', 'D:\Users\Admin\Publisher_files\publisher_014\pub_video_014'),
	('15', 'Inaccurate Description of the beautiful description', 'D:\Users\Admin\Publisher_files\publisher_015\pub_img_015', default),
	('16', 'Modest and inaccurate description', 'D:\Users\Admin\Publisher_files\publisher_016\pub_img_016', 'D:\Users\Admin\Publisher_files\publisher_016\pub_video_016'),
	('17', 'Inaccurate Description of the beautiful description', 'D:\Users\Admin\Publisher_files\publisher_017\pub_img_017', 'D:\Users\Admin\Publisher_files\publisher_017\pub_video_017'),
	('18', 'Description worthy of god', 'D:\Users\Admin\Publisher_files\publisher_018\pub_img_018', default),
	('19', 'Description of the Red-eared Turtle', 'D:\Users\Admin\Publisher_files\publisher_019\pub_img_019', default),
	('20', 'Inaccurate Description of the beautiful description', 'D:\Users\Admin\Publisher_files\publisher_020\pub_img_020', default)
;


insert into users (
	first_name, second_name, email, 
	nickname, pass_hash, country,
	birth_date, bonus_level)
values 
	('Ivan','Sidorov','sidorov@exmail.com','Xiryrg84','$2y$10$WIceDM3mP/pZzcFVGJ0jlO1nNYF6vSAuPeqoc2vTRz/OSK1IL7cPO','Russia', '1984-12-23', '1'),
	('Egor','Sviridow','swirid@exmail.com','Svirida-boroda','$2y$10$oqIol/wFiPPyS0WorcTofetWZVexJjHIiuc0JIfNBsP3kfSXE23PG','Russia', '1991-01-12', '1'),
	('Yulia','Petrovskaya','Yulya-yula@exmail.com','konffetka99','$2y$10$t7l1.du1VWtkXjo91Le0NuaJFemUY6R2HyymFinMRLSph21T.7eAS','Russia', '1999-03-24', '1'),
	('Hedeo','Kodzima','Kodzima@exmail.com','Genious','$2y$10$w9GSCD53jInjfMVzSkKENeZ2jGDdN.FpLVKBWSdVmz82VXmQVZi6e','Japan', '1988-11-25', '1'),
	('Oyoko','Mizu','Mizu@exmail.com','Katzefrau','$2y$10$uE3.lrS86pkxhmWb0ADNCO2bc0A2kEyXw/lYZTBEN24iF/ULpwjse','Japan', '1984-03-02', '2'),
	('John','Smith','USAUSAUSA@exmail.com','Patriot','$2y$10$kVi3jDPnDdqUCvR/GPkD9.seAUrzMKTeiAMr7wFJDYNR2PExBSuEO','United States', '1987-12-21', '3'),
	('Nicole','Birdman','N.Birdman@exmail.com','Eagle','$2y$10$H62BrtpZQkt4sR6K3IaWge2GCSM3JLAkvUbP9fqOyVdF3acbdDisS','United States', '1985-08-23', '2'),
	('Sarah','Connor','terminator@exmail.com','WomanOfSteel','$2y$10$TDx/iXLyiZF80epdOdiBKuzjsohSuRXhrYnNOl7XOqAdrKpn0ATEm','United States', '1986-09-15', '1'),
	('Jeremy','Smith','haterick@exmail.com','BestFather','$2y$10$xNwBPaa5gqiPqE/6xmXE9.l8yFFwB2psfj07uAQm9s9Fs3Jxv68Ga','United States', '1984-07-14', '1'),
	('Hanz','Liess','HanzL@exmail.com','die Maschine','$2y$10$E/SkpfgjP8/qcI9XzGYWwO2Ubweriq7KroNLff9rXCavSvUOLPRAW','German', '1994-12-23', '1'),
	('Josef','Muller','MullerJos123@exmail.com','Hochswarzkopf','$2y$10$tq2EBu6cdBD48.rN8asODOOx5o4M/uoxoTyfTIqQwL2JrsHUMy29m','German', '1984-12-23', '2'),
	('Mario','Medichi','MarioMed@exmail.com','Bauzet','$2y$10$8ucwyucBT9iVrkLACbJpwenzXpetLVI48Xwrwr7cThrIf9oXLuA/m','Italy', '1979-12-23', '2'),
	('Joseppe','Borgo','JoseppePizzaLover@exmail.com','pizzaEater','$2y$10$XP5vP0TdqRIIVjfw6BhnW.sbb5ggpfA4vgvB1hWg4th.qe0V3Prqu','Italy', '1986-12-23', '2'),
	('Yorma','Olylla','Olyorma@exmail.com','RawWood','$2y$10$XP5vP0TdqRIIVjfw6BhnW.sbb5ggpfA4vgvB1hWg4th.qe0V3Prqu','Finland', '1989-12-23', '3'),
	('Kianu','Rives','lovetrinity@exmail.com','Breathtaking','$2y$10$wCpT4MVh1S3yaEHIav2H4.PWAhp9j7/uH/bjP7H9iMmNwQqXsv8bu','Canada', '1987-12-23', '4')
;


insert into users_profiles (profile_id, user_img, gender, user_info)
values 
	('1', 'D:\Users\Admin\User_files\user_001\user_file_001', '1', 'Some user`s data about him-/her-self'),
	('2', 'D:\Users\Admin\User_files\user_002\user_file_001', '1', 'Test different data'),
	('3', 'D:\Users\Admin\User_files\user_003\user_file_001', '2', 'Some unusial test data'),
	('4', 'D:\Users\Admin\User_files\user_004\user_file_001', '1', 'Test data fo testing tests'),
	('5', 'D:\Users\Admin\User_files\user_005\user_file_001', '2', 'One three three seven'),
	('6', 'D:\Users\Admin\User_files\user_006\user_file_001', '1', 'User`s data about bad ecological'),
	('7', 'D:\Users\Admin\User_files\user_007\user_file_001', '2', 'Some personal information'),
	('8', 'D:\Users\Admin\User_files\user_008\user_file_001', '2', 'Some user`s data about him-/her-self'),
	('9', 'D:\Users\Admin\User_files\user_009\user_file_001', '1', 'CATS CATS CATS CATS'),
	('10', 'D:\Users\Admin\User_files\user_010\user_file_001', '1', 'Casual information'),
	('11', 'D:\Users\Admin\User_files\user_011\user_file_001', '1', 'Some user`s data about him-/her-self'),
	('12', 'D:\Users\Admin\User_files\user_012\user_file_001', '1', 'Test different data'),
	('13', 'D:\Users\Admin\User_files\user_013\user_file_001', '1', 'Some unusial test data'),
	('14', 'D:\Users\Admin\User_files\user_014\user_file_001', '1', 'Some unusial test data'),
	('15', 'D:\Users\Admin\User_files\user_015\user_file_001', '1', 'Test different data')
;


insert into forum (topic, messadge, from_user_id, images)
values 
	('To buy or not to buy.', 'The ironic question of the reason for buying.', '1', default),
	('No discount.', 'Whining about no discount.', '4', 'D:\Users\Admin\User_files\user_004\user_file_003'),
	('How to up bonus status.', 'Detailed but untruthful guide.', '2', default),
	('Best releases of year.', 'Full of private opinion text.', '2', default),
	('Price in other region.', 'Does it have same price in your region?!', '4', default),
	('Did u see this bugs?!', 'A picture with occlusion and dissatisfaction, which could be squeezed into 4 words', '5', 'D:\Users\Admin\User_files\user_005\user_file_002'),
	('Need Help!', 'Someone`s hopeless request for help', '13', default),
	('FAQ', 'Discussion about new forum parts.', '6', default),
	('Technical support.', 'BIG BRANCH OF QUESTIONS 4 A LUNCH.', '12', default),
	('Patch Notes', 'Some data about update.', '2', 'D:\Users\Admin\Publisher_files\publisher_012\pub_img_013')
;


insert into user_rewiews (prod_id, user_id, rewiew_text)
values 
	('18', '2', 'Good rewiew.'),
	('18', '3', 'Good rewiew.'),
	('2', '5', 'Bad rewiew.'),
	('2', '5', 'So-so rewiew.'),
	('3', '4', 'Bad reiew.'),
	('4', '3', 'Good rewiew.'),
	('5', '3', 'Rewiew of other product.'),
	('4', '14', 'Bad rewiew.'),
	('4', '15', 'Good rewiew.'),
	('15', '2', 'So-so rewiew.'),
	('15', '2', 'Regular rewiew.'),
	('14', '3', 'Good rewiew.'),
	('14', '5', 'Bad rewiew.'),
	('13', '6', 'Uncommon rewiew.'),
	('2', '7', 'Bad rewiew.'),
	('11', '8', 'So-so rewiew.'),
	('20', '2', 'Good rewiew.'),
	('14', '3', 'Good rewiew.'),
	('7', '5', 'Bad rewiew.'),
	('7', '5', 'So-so rewiew.'),
	('6', '4', 'Bad reiew.'),
	('5', '3', 'Good rewiew.'),
	('4', '3', 'Rewiew of other product.'),
	('3', '14', 'Bad rewiew.'),
	('2', '15', 'Good rewiew.'),
	('8', '2', 'So-so rewiew.'),
	('9', '2', 'Regular rewiew.'),
	('9', '3', 'Good rewiew.'),
	('9', '5', 'Bad rewiew.'),
	('10', '6', 'Uncommon rewiew.'),
	('20', '7', 'Bad rewiew.'),
	('12', '8', 'So-so rewiew.')
;


insert into library (which_user_id, product_id, status, acquired_date)
values
	('1', '1', '1', '2019-12-01'),
	('1', '2', '2', '2019-12-01'),
	('1', '1', '3', '2019-12-01'),
	('4', '3', '3', '2019-12-01'),
	('4', '2', '3', '2019-12-01'),
	('5', '1', '3', '2019-12-01'),
	('6', '4', '3', '2019-12-01'),
	('6', '3', '3', '2019-12-01'),
	('6', '2', '3', '2019-12-01'),
	('6', '5', '3', '2019-12-01'),
	('7', '9', '3', '2019-12-01'),
	('7', '8', '3', '2019-12-01'),
	('7', '7', '2', '2019-12-01'),
	('7', '6', '2', '2019-12-01'),
	('12', '1', '1', '2019-12-01'),
	('2', '13', '1', '2019-12-01'),
	('9', '20', '1', '2019-12-01'),
	('9', '19', '2', '2019-12-01'),
	('8', '14', '2', '2019-12-01'),
	('7', '15', '2', '2019-12-01'),
	('6', '13', '1', '2019-12-01'),
	('5', '12', '2', '2019-12-01'),
	('4', '15', '3', '2019-12-01'),
	('3', '20', '3', '2019-12-01')
;


insert into publishers (id_publisher, name, location, about, date_of_establishment)
values
	('1', '2K', 'USA', 'Publisher General Company Information', '2005-10-05'),
	('2', 'Frontier Developments', 'United Kindom', 'Publisher General Company Information', '1994-01-28'),
	('3', 'Beamdog', 'Canada', 'Publisher General Company Information', '2009-01-01'),
	('4', 'Team Cherry', 'Australia', 'Publisher General Company Information', '2020-01-01'),
	('5', 'Project Moon', 'Austria', 'Publisher General Company Information', '2010-01-01'),
	('5', 'Re-Logic', 'USA', 'Publisher General Company Information', '2011-01-01'),
	('7', 'Coffee Stain Publishing', 'Sweden', 'Publisher General Company Information', '2010-01-01'),
	('8', 'CD PROJEKT RED', 'Poland', 'Publisher General Company Information', '1994-05-01'),
	('9', 'Aspyr', 'USA', 'Publisher General Company Information', '1996-09-27'),
	('10', 'SEGA', 'Japan', 'Publisher General Company Information', '1960-06-03'),
	('11', 'Feral Interactive', 'United Kindom', 'Publisher General Company Information', '1996-01-01'),
	('12', 'Paradox Interactive', 'Shweden', 'Publisher General Company Information', '1999-01-01'),
	('14', 'Thunder Lotus Games', 'Canada', 'Publisher General Company Information', '2020-01-01'),
	('15', 'Manuel Jesús Bolaños Gómez', 'No data', 'Publisher General Company Information', '2020-01-01'),
	('16', 'MAGIX Software GmbH', 'Germany', 'Publisher General Company Information', '1993-01-01'),
	('18', 'Movavi', 'No data', 'Publisher General Company Information', '2020-01-01'),
	('19', 'Eduard Kozadaev', 'No data', 'Publisher General Company Information', '2020-01-01'),
	('20', 'Profenix Studio SRLS', 'Italy', 'Publisher General Company Information', '2020-01-01')
;
