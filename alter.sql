create database info;
use info;
create table contacts(
           name varchar(20) not null ,
           phone varchar(20) not null unique);
           insert into contacts(name , phone)
           values('Roshani', '93095164760'),
           ('Hrutik','951236478');
           desc contacts;
           select * from contacts ;
           
           create table user(
           name varchar(20), 
           age int check (age >22) );
            insert into user(name, age) values('Roshani' , 23),
									         ('Roshanin' , 20);

            
            
            
            