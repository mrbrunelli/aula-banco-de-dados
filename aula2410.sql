 create database if not exists Aula2410 default character  set utf8 default collate utf8_general_ci;
 
  create table websites (
    website_id int(11) primary key,
    website_name varchar(25) not null,
    server_name varchar(20),
    creation_date date,
    constraint websites_unique unique (website_name));
    
     alter table websites drop index websites_unique;
     
     alter table websites add constraint website_server_unique unique (website_name, server_name);
     
     create table t1 (
     a int default 1,
     b int default 2
     );
     
     create table t2 ( a int check (a > 2), b int check (b > 2), constraint a_greater check (a > b));
     
     alter table t2 drop constraint a_greater;
     
     create table t3 (name varchar(30) check (char_length(name) > 2), start_date date,
     end_date date check (start_date is null or end_date is null or start_date < end_date));
     
     create table animals (id int not null auto_increment, name char(30) not null, primary key (id));
     
     alter table animals auto_increment = 8;
     
     insert into person (first_name, last_name) values ('John', 'Doe');
     
     insert into websites (website_id, website_name, server_name, creation_date) values (1, 'Google', 'Google.com', '2019-10-24');
     insert into websites (website_id, website_name, server_name, creation_date) values (2, 'Bing', 'Bing.com', now());
     
     insert into t1 (a) values (5);
     
     insert into t1 (b) values (10);
     
     insert into t2 (a, b) values (1, 2);
     
     insert into t2 (a, b) values (3, 3);
     
     insert into t3 (name, start_date, end_date) values ('Matheus', '2018-12-29', '2019-12-29');
     
     insert into t3 (name, start_date, end_date) values ('a', '2018-12-29', '2019-12-29');
     
     insert into animals (name) values ('Gato');
     
     insert into animals (name) values ('Ornitorrinco');
     
     update animals set name = 'Lince' where id = 8;
     
     update t1 set a = 35 where a = 5;
     
     update t2 set a = 1000, b = 2000;
     
     update t2 set a = (a+b), b = 2000;
     
     insert into animals (name) values ('Pato'), ('Macaco'), ('Leão'), ('Rato'), ('Esquilo');
     
     update animals set name = 'Cachorro' where id > 10;
     