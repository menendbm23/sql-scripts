/*
Create scripts with a parameter for customer sales.
The query will display all customers with sales
less than the parameter number 
*/

declare @lowsales decimal(9,2) = 20000;
declare @highsales decimal(9,2) = 30000;


select * 
	from Customers 
	where sales between @lowsales and @highsales;