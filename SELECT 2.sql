select t.name_of_gener, count(tg.singer_id) from title t
join title_gener tg on t.id = tg.gener_id 
group by name_of_gener; 

select a.name_of_album, a.year_, count(s.id) from album a
join song s on a.id = s.album_id
where a.year_ between 2019 and 2020
group by a.name_of_album, a.year_;

select a.name_of_album, AVG(s.time_of_song) from album a
join song s on a.id = s.album_id
group by a.name_of_album;

select gs.name_of_singer from gener_singer gs
join singer_album sa on gs.id = sa.singer_id 
join album a on a.id = sa.album_id 
where a.year_ != 2020;

select c.name_of_collection from collection c
join song_collection sc on c.id = sc.collection_id 
join song s on sc.song_id = s.id
join album a on a.id = s.album_id
join singer_album sa on s.album_id = sa.singer_id
join gener_singer gs on sa.singer_id = gs.id
where gs.name_of_singer like '%Anacondaz%'; 

select a.name_of_album from album a
join singer_album sa on a.id = sa.album_id
join gener_singer gs on sa.singer_id = gs.id
join title_gener tg on gs.id = tg.singer_id 
join title t on tg.gener_id = t.id
group by a.name_of_album
having count(tg.gener_id) > 1;

select s.name_of_song from song s 
join song_collection sc on s.id = sc.song_id
where sc.song_id is null;

select gs.name_of_singer, s.name_of_song, s.time_of_song from gener_singer gs
join singer_album sa on gs.id = sa.singer_id 
join album a on sa.album_id = a.id 
join song s on a.id = s.album_id
group by gs.name_of_singer, s.name_of_song, s.time_of_song
order by s.time_of_song asc limit 2;
--having s.time_of_song = (select min(time_of_song) from song);

select a.name_of_album, count(s.id) from album a 
join song s on a.id = s.album_id
group by a.name_of_album
order by count(s.id) asc 
limit 2;
