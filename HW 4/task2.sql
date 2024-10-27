
UPDATE petEvent SET remark="5 kittens, 3 female, 2 male" where petname="Fluffy" and eventdate="1995-05-15";
UPDATE petEvent SET petname="Claws" where petname="Slim" and eventdate="1997-08-03";
UPDATE petPet SET death="2020-09-01" where petname="Puffball";
DELETE FROM petEvent where petname="Buffy";
DELETE FROM petPet where petname="Buffy";

    