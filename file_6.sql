/*

 classicmodels file link : https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip

*/

USE classicmodels;

/* Aggregate Function : 'AVG()', 'COUNT()' , 'MAX()' , 'MIN()' , 'SUM()'
we can use 'as' for output column name or if we want to use that column anywhere else
if you want output based on specific column then you have to use : 'GROUP BY'
if you want apply condition on aggregate function output then you have to use : 'HAVING' */

select count(country) from customers;

select count(country) as count from customers;

select max(creditlimit) as maximum, country from customers
group by country;

select min(creditlimit) as minimum, country from customers
group by country;

select sum(creditlimit) as total , country from customers
group by country;

select avg(creditlimit) as Average , country from customers
group by country;

select avg(creditlimit) as Average , country from customers
group by country
order by country desc;


select avg(creditlimit) as Average , country from customers
group by country
having Average>80000;

select avg(creditlimit) as Average , country from customers
group by country
having Average>80000
order by country desc;

select avg(creditlimit) as Average , country from customers
group by country
having Average>80000
order by country desc
limit 5;

select sum(creditlimit) as total , country from customers
group by country
having total>300000
order by total desc;
