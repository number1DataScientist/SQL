/*

 classicmodels file link : https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip

*/

use classicmodels;

show tables;

select* from customers;
select* from employees;

/*SUB QUERY*/
/*in sub query if you output would be more then one then you have use 'IN' otherwise you can use '='*/

select* from customers
where creditlimit> (select avg(creditlimit) from customers);


/*we can use sub query for accessing information based on two tables or more*/


select*
from customers
where customernumber in ( select customernumber from payments
where amount > (select avg(amount) from payments));


select*
from customers
where customernumber in ( select customernumber from orders
where ordernumber in ( select ordernumber from orderdetails
where productcode in ( select productcode from products
where productline = 'vintage Cars')));

/*
(can not use 'order by',
can not use 'between') in subquery
*/

select msrp from products
order by msrp desc;

-- 3RD HIGHEST MSRP from product
select productcode , productline,MSRP from products
where MSRP=(select max(MSRP) from products
where MSRP<(select max(MSRP) from products
where MSRP<(select max(MSRP) from products)));

-- 4RD HIGHEST MSRP from product
select productcode , productline,MSRP from products
where MSRP=(select max(MSRP) from products
where MSRP<(select max(MSRP) from products
where MSRP<(select max(MSRP) from products
where MSRP<(select max(MSRP) from products))));

