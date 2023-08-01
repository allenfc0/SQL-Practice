CREATE DATABASE test;
DROP DATABASE test;

create database record_company;
Use record_company;

CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,    
    PRIMARY KEY (id)
);

CREATE TABLE albums (
	id int not null auto_increment,
    name varchar(255) not null,
    release_year int,
    band_id int not null,
    primary key (id),
    foreign key (band_id) references bands(id)
);

Alter table albums
	add genre varchar(255) not null;

Alter table bands
	add first_started VARCHAR(255) not null;

insert into bands (
	name,
	first_started
)
values (
	"iron mainden #2",
    "2020"
);

insert into bands (name)
	values ("deuce"), ("avenger's end game"), ("Anchor");

select * from bands;

select * from bands LIMIT 2;

select name from bands;

Select id from bands;

select id as 'ID', name as "Band Name" from bands;

Select * from bands ORDER BY name DESC;

Insert Into albums (name, release_year, band_id)
	Values ("The number of the beast", 1985, 1),
			("Power Slave", 1984, 1),
            ("Nightmare", 2018, 2),
            ("Nightmare", 2010, 3),
            ("Test album", Null, 3);
            
Select * From albums;

Select DISTINCT name From albums;

Update albums
Set release_year = 1982
Where id = 1;

Select * From albums
Where release_year < 2000;

Select * From albums
Where name Like "%er%" OR band_id = 2;

Select * From albums
Where name Like "%er%" AND band_id = 4;

Insert Into albums (name, release_year, band_id)
Values ("renegader", 2023, 4);

Select * From albums
Where release_year Between 2000 AND 2018;

Select * From albums
Where release_year IS NULL;

Delete From albums
Where id = 5;

Select * From bands
Join albums ON bands.id = albums.band_id;

Select AVG(release_year) From albums;
Select SUM(release_year) From albums;

Select band_id, COUNT(band_id) from albums
Group By band_id;

Select b.name AS band_name, COUNT(a.id) AS num_albums
From bands AS b
Left Join albums AS a ON b.id = a.band_id
Where b.name = "Deuce"
Group By b.id
Having num_albums = 1;


