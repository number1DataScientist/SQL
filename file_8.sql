/*

 sakila file link : https://downloads.mysql.com/docs/sakila-db.zip

*/

use sakila;

show tables;

select * from actor;
select * from film_actor;
select * from film;

select*
from actor
where actor_id in ( select actor_id from film_actor
where film_id in ( select film_id from film
where rating = 'PG'));


/*
if you want output from multiple table you have to use joins
*/

select * from actor;
select * from film_actor;
select * from film;


select a.actor_id,a.first_name,a.last_name,f.film_id,f.last_update
from actor as a inner join film_actor as f
on a.actor_id = f.actor_id;


select a.actor_id,a.first_name,a.last_name,f.film_id,f.last_update
from actor as a left join film_actor as f
on a.actor_id = f.actor_id;

select a.actor_id, a.first_name, a.last_name, f.film_id
from actor as a right join film_actor as f
on a.actor_id = f.actor_id;

/*for more understanding create below table and run below code*/
create table employee (
empid varchar(10),
ename varchar(20),
Salary int,
depid varchar(10));


INSERT INTO employee values
('E1','John',45000,'D1'),
('E2','Mary',60000,'D2'),
('E3','Steve',73000,'D3'),
('E4','Helen',86000,'D4'),
('E5','Joe',35000,'D7');



create table department (
depid varchar(10),
dname varchar(10));


INSERT INTO department values
('D1','IT'),
('D2','HR'),
('D3','Admin'),
('D4','Finance'),
('D5','Sales');

select * from department;
select * from employee;create table employee (
empid varchar(10),
ename varchar(20),
Salary int,
depid varchar(10));


INSERT INTO employee values
('E1','John',45000,'D1'),
('E2','Mary',60000,'D2'),
('E3','Steve',73000,'D3'),
('E4','Helen',86000,'D4'),
('E5','Joe',35000,'D7');



create table department (
depid varchar(10),
dname varchar(10));


INSERT INTO department values
('D1','IT'),
('D2','HR'),
('D3','Admin'),
('D4','Finance'),
('D5','Sales');

select * from department;
select * from employee;

-- inner join
select e.empid, e.ename, e.Salary, d.depid,d.dname
from employee as e inner join department as d
on e.depid = d.depid;

-- left join
select e.empid, e.ename, e.Salary, d.depid,d.dname
from employee as e left join department as d
on e.depid = d.depid;

-- right join
select e.empid, e.ename, e.Salary, d.depid,d.dname
from employee as e right join department as d
on e.depid = d.depid;

-- union join (full join)
select e.empid, e.ename, e.Salary, d.depid,d.dname
from employee as e left join department as d
on e.depid = d.depid
union
select e.empid, e.ename, e.Salary, d.depid,d.dname
from employee as e right join department as d
on e.depid = d.depid;







