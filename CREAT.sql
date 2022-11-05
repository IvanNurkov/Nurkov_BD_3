CREATE table if not exists Title (
id serial primary key,
name_of_gener text not null
);

CREATE table if not exists Gener_singer (
id serial primary key,  
name_of_singer text not null
);

CREATE table if not exists Title_gener (
gener_id integer references Title(id),
singer_id integer references Gener_singer(id),
constraint title_gener_pk primary key (gener_id, singer_id)
);

create table if not exists Album (
id serial primary key,
name_of_album text not null, 
year_ integer
);

CREATE table if not exists Singer_Album (
singer_id integer references Gener_singer(id), 
album_id integer references Album(id),
constraint singer_album_id primary key (singer_id, album_id)
);


create table if not exists Collection (
id serial primary key, 
name_of_collection text not null,
year_ integer
);

create table if not exists Song (
id serial primary key,
album_id integer not null references Album(id),
name_of_song text not null, 
time_of_song integer
);

CREATE table if not exists Song_collection (
song_id integer references Song(id), 
collection_id integer references Collection(id),
constraint song_collection_id primary key (song_id, collection_id)
);

