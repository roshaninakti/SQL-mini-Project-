use pet_store;
CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       select * from cats;
       desc cats;
       update cats set name ='jack' where name='jackson';
       update cats set breed ='Rosh'  where name ='Ringo';
       update cats set age =14 where breed = 'Maine Coon';
       delete from cats where age = 4;
       delete from cats where cat_id = age ;
       delete from cats;
       drop table cats;
       select * from cats;
       drop database pet_store;
       show databases;
       drop database mydb;
       show databases;