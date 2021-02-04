/* 
This is also a comment
*/
select *
	from Customers 
	where Sales > (select avg(sales) from customers);


