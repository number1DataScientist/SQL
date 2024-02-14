/*

 classicmodels file link : https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip

*/

USE classicmodels;

show tables;

select * from customers;   

select customername , contactlastname , contactfirstname from customers
where country = 'USA'
order by city
limit 4;                                                -- limit is for number of output you want


/* if we want to loccate the info where there is not only a country, if there is 3 country
so we have to write country 3 times */
select ContactLastName,ContactfirstName,country,creditlimit from customers 
where country  =  'USA' or country  = 'France' or country  = 'UK';


/* but if there is more specific country we want then it is time consuming so we can use 'IN' */
select ContactfirstName, ContactLastName, country from customers
where country in ('USA','UK','France');


/* if we want values in between then we use 'between' */
select contactfirstname, contactlastname, creditlimit from customers
where creditlimit between 85000 and 100000;


/* if you want to access that this charecters are present in data:
for this you can use this : 'a%', '%z' , 'a%z' , %in%
 */
 select contactfirstname from customers
 where contactfirstname like 'a%';
 
  select contactfirstname from customers
 where contactfirstname like '%e';

 select contactfirstname from customers
 where contactfirstname like 'm%e';
 
  select contactfirstname from customers
 where contactfirstname like '%ie%';
 
 select creditlimit from customers
 where creditlimit like '%50%';



