-- 3, creating my mydb
create database mydb;

create table customers(
cust_id int(10) not null auto_increment,
cust_firstname varchar(50) not null,
cust_lastname varchar(50) not null,
cust_nickname varchar(50) ,
cust_age int,
cust_gender char not null,
cust_country varchar(20) not null,
cust_salery dec(20) not null,
primary key (cust_id));

-- 4, add modify and delete ddl

alter table customers
add bonus int not null;

alter table customers
modify column cust_age int not null;

alter table customers
drop column cust_nickname;

alter table customers
drop column bonus;


-- 5, insert into customers values(cust_id, 'cust_firstname', 'cust_lastname', 'cust_age', 'cust_gender', 'cust_country', 'cust_salery');

insert into customers values(111, 'Nick', 'Jones', 45, 'M', 'USA', 20000000),
					        (222, 'Antony', 'Martial', 40, 'M', 'France', 10000000),
                            (333, 'Ross', 'Geller', 50, 'M','Uzbekistan', 36000000),
                            (444, 'Chandler', 'Bing', 47, 'M', 'Unkown', 34000000),
                            (555, 'Rachel', 'Green', 30, 'F', 'Kazakistan', 4000000),
                            (666, 'Nick', 'Jones', 46, 'M', 'USA', 20000000),
                            (777, 'Poul', 'Pogba', 34, 'M', 'France', 20000000),
                            (888, 'Joey', 'Tribbiani', 36, 'M', 'Ethiopia', 70000000);
              use mydb;              
-- 5 update

update customers
set cust_country = 'Ethiopia'
where cust_id = 111;

update customers
set cust_country = 'Ethiopia'
where cust_id = 333;

update customers
set cust_country = 'Ethiopia'
where cust_id = 444;

delete from customers
where cust_id = 666;

-- 6 Tcl

select *
from customers;

start transaction;

select *
from customers
where cust_country = 'Ethiopia';

select *
from customers 
where cust_salery > 5000000;

select *
from customers
where cust_gender = 'M';

select cust_country, cust_firstname, cust_lastname 
from customers
where cust_gender = 'M';

select distinct cust_country
from customers;

select cust_country, cust_firstname, cust_lastname 
from customers
where cust_gender = 'F'
order by cust_firstname desc;

select cust_country, cust_firstname, cust_lastname 
from customers
where cust_gender = 'M'
order by cust_firstname and cust_lastname and cust_country asc;

select *
from customers 
where cust_gender = 'F' and cust_salery > '50000' and cust_country = 'Ethiopia';

select *
from customers
where cust_country = 'Ethiopia' or 'Uzbakistan';

-- q9

select min(cust_salery) AS minimumsalery
from customers;

-- q10

select max(cust_salery) as 'highestsalery'
from customers;

-- q11

select count(*) as numberofcustomers
from customers;

-- q12
 
 select avg(cust_salery) as 'averagesalery'
 from customers;
 
 -- q13
  
select sum(cust_salery) as totalsalery
from customers;

-- q14

select *
from customers
where cust_salery between 2000000 and 8000000;

-- q15

select *
from customers
where cust_firstname like 'p%';

-- q16

select *
from customers
where cust_firstname like '_n%' and cust_lastname like '%l';

-- q17

select *
from customers 
where cust_lastname like 'p%a';

-- q18
  
  select *
  from customers
  where cust_country in ('Ethiopia', 'UAS', 'France');
  
  select *
  from customers
  where cust_country = 'Ethiopia' or 'USA' or 'France';
  
  
  -- 7 special SQL oper
  drop table Address;
  
  create table Address(
  cust_zip varchar(50) not null,
  cust_street varchar(50) not null,
  cust_city varchar(10) not null,
  cust_state varchar(50),
  cust_id int,
  unique(cust_zip), 
  foreign key(cust_id) references customers(cust_id));
  
  -- inserting into to Address (cust_zip, cust_street, cust_city, cust_state, cust_id)
  
  insert into Address values(1000, 'megenagan','AddisAbaba', 'AdisAbeba', 444),
							(2000, '4-kilo', 'AddisAbaba', 'AdisAbeba', 555),
						    (3000, '41-eyesus', 'AddisAbaba', 'AdisAbeba', 888),
						    (4000, '6-kilo', 'AddisAbaba', 'AdisAbeba', 333),
                            (5000, '01-st', 'SanDiago', 'California', null),
							(6000, 'KU-road', 'LosAngeles', 'California', null),
                            (7000, 'JK-road', 'Miami', 'Florida', null),
							(8000, 'Lj-road', 'Atlanta', 'Georgia', null);
  drop table Address;
  
  -- 7  left join, left outer join, right outer join, full outer join
  
  select customers.cust_firstname, customers.cust_lastname,  customers.cust_country, Address.cust_city, Address.cust_state
  from customers inner join Address
  on customers.cust_id=Address.cust_id;
    
    -- left outer join
    
  select customers.cust_firstname, customers.cust_lastname,  customers.cust_country, Address.cust_city, Address.cust_state
  from customers left outer join Address
  on customers.cust_id=Address.cust_id;
  
  -- right outer join 
 

  -- full outher join 

  select customers.cust_firstname, customers.cust_lastname,  customers.cust_country, Address.cust_city, Address.cust_state
  from customers left outer join Address
  on customers.cust_id=Address.cust_id
  union
  select customers.cust_firstname, customers.cust_lastname,  customers.cust_country, Address.cust_city, Address.cust_state
  from customers right outer join Address
  on customers.cust_id=Address.cust_id;
  
-- END OF ASSIGNMENT 





-- INDEX creating view 

create view cust_view as
select *
from customers
where cust_salery >= 1000000;
 
 select *
 from cust_view;
  
  
  
  
  
  
  
  











