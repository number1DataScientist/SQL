/*

 classicmodels file link : https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip

*/

USE classicmodels;

show tables;

select * from customers;                  -- for accessing all the infromation

select customername, city from customers;    -- for accessing specific columns

select contactfirstname, city,state from customers;

select distinct city from customers;                  

select distinct country from customers;

select customername,country from customers   -- for accessing information at specific location
where country = 'USA';


select customername,creditlimit from customers 
where creditlimit > 80000;

select customername , creditlimit from customers
where creditlimit < 25000;

-- we can use this operators
-- AND , OR , NOT ,IS NULL,IS NOT NULL

select customername , creditlimit, country from customers   
where creditlimit >85000 and country = 'USA';                      

select customername , creditlimit, country from customers
where creditlimit >85000 or country = 'USA';                      

select customername , creditlimit , country from customers
where not country = 'USA';

select customername , creditlimit, country, state from customersvvv
where state is Null;

select customername , creditlimit, country, state from customers
where state is Not Null;

select customername , creditlimit, country from customers  -- order by: use for access information in order to column.
order by country;

select customername , creditlimit, country from customers  -- DESC: for descending order.
order by country desc;

select customername , creditlimit, country from customers
where country = 'USA'
order by creditlimit desc;




