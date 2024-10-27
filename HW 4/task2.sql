DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

create table petPet (
  petname varchar(20) primary key,
  owner varchar(45),
  species varchar(45),
  gender enum("M","F"),
  birth date,
  death date
);

create table petEvent (
  petname varchar(20),
  eventdate date,
  eventtype varchar(45),
  remark varchar(255),
  FOREIGN KEY (petname) references petpet (petname),
  PRIMARY KEY (petname,eventdate)
);
INSERT INTO petPet VALUES
    ("Fluffy", "Harold", "cat", "F", "1993-02-04", NULL),
    ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL),
    ("Claws", "Gwen", "cat", "M", "1994-03-17", NULL),
    ("Buffy", "Harold", "dog", "F", "1989-05-13", NULL),
    ("Fang", "Benny", "dog", "M", "1990-08-27", NULL),
    ("Bowser", "Diane", "dog", "M", "1979-08-31", "1995-07-29"),
    ("Chirpy", "Gwen", "bird", "F", "1998-09-11", NULL),
    ("Whistler", "Gwen", "bird", NULL, "1997-12-09", NULL),
    ("Slim", "Benny", "snake", "M", "1996-04-29", NULL),
    ("Puffball","Diane","hamster","F","1999-03-30",NULL);

INSERT INTO petEvent VALUES
	("Fluffy","2020-10-15","vet","antibiotics"),
    ("Hammy","2020-10-15","vet","antibiotics"),
    ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ("Slim", "1997-08-03", "vet", "broken rib"),
    ("Slim", "1997-10-04", "vet", "broken tooth"),
    ("Bowser", "1991-10-12", "kennel", NULL),
    ("Fang", "1991-10-12", "kennel", NULL),
    ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ("Claws", "1998-03-17","birthday", "Gave him a new flea collar"),
    ("Whistler", "1998-12-09", "birthday", "First birthday");
UPDATE petEvent SET remark="5 kittens, 3 female, 2 male" where petname="Fluffy" and eventdate="1995-05-15";
UPDATE petEvent SET petname="Claws" where petname="Slim" and eventdate="1997-08-03";
UPDATE petPet SET death="2020-09-01" where petname="Puffball";
DELETE FROM petEvent where petname="Buffy";
DELETE FROM petPet where petname="Buffy";

    