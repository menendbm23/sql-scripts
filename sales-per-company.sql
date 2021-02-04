declare @bottomid decimal(9,2) = 1;
declare @topid decimal(9,2) = 5;

select * 
	from Customers 
	where Id between @bottomid and @topid;
