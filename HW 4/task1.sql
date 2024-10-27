DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

create table petPet (
  petname varchar(20) primary key,
  owner varchar(45),
  species varchar(45),
  gender enum('M','F'),
  birth date,
  death date
);

create table petEvent (
  petname varchar(20),
  eventdate date,
  eventtype varchar(45),
  remark varchar(255),
  FOREIGN KEY (petname) references petpet (petname),
  PRIMARY KEY (petname,eventtype)
);
