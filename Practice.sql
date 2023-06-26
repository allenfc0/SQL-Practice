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

insert into bands (name)
values ("iron mainden");

insert into bands (name)
values ("deuce"), ("avenger's end game"), ("Anchor");

select * from bands;

select * from bands LIMIT 2;

select name from bands;

select id as 'ID', name as "Band Name" from bands;