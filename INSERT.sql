insert into title(name_of_gener)
values('Rock'), ('Hip Hop'), ('Pop'), ('Rap'), ('Metal');

insert into gener_singer(name_of_singer)
values('Аквариум'), ('Kris Kross'), ('Elyhon Jhon'), ('Oxxxymiron'), ('Black Sabbath'), ('Linkin Park'), ('Anacondaz'), ('Sum 41');

insert into Title_gener(gener_id, singer_id)
values(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (5, 6), (4, 7), (1, 8);

insert into album(name_of_album, year_)
values('Радио Африка', 1983), ('Totally Krossed Out', 1992), ('To Be Continued...', 1990), ('Красота и уродство', 2021), ('Born Again', 1983), ('Meteora', 2003),
('Мои дети не будут скучать', 2018), ('Does This Look Infected?', 2002);

insert into Singer_Album(singer_id, album_id)
values(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);


insert into song(album_id, name_of_song, time_of_song)
values(1, 'Капитан Африка', 12.5), (1, 'Рок-н-Ролл мертв', 5.5), (2, 'Jump', 3.25), (2, 'Warm It Up', 4.2), (3, 'Rocket Man', 4.75), (3, 'Crocodile Rock', 3.9), 
(4, 'Мы все умрем', 2.75), (4, 'Дрейдл', 2.15), (5, 'Trashed', 4.25), (5, 'Born Again', 6.5), (6, 'Numb', 3.1), 
(6, 'Faint', 2.75), (7, 'Пусть они умрут', 6.25), (7, 'Все хорошо', 4.5), (8, 'Still Waiting', 2.5);

insert into collection(name_of_collection, year_)
values('Аквариум лучшее', 2005), ('Хип Хоп 90-х', 2020), ('Dimonds', 2017), ('Лучшие песни Русского рэпа 21-го года', 2022), ('Rock classic', 2015), ('Best of Linkin park', 2017),
('Anacondaz лучшее', 2022), ('Американский рок 00-х', 2018);

insert into Song_collection(song_id, collection_id)
values(1, 1), (2, 1), (3, 2), (4, 2), (5, 3), (6, 3), (7, 4), (8, 4), (9, 5), (10, 5), (11, 6), (12, 6), (13, 7), (14, 7), (15, 8);