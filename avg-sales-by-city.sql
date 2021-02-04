select city, count(*) as 'Nbr of Customers', sum(sales) as 'Sales',
		avg(sales) as 'Average Sale' 
	from Customers
	group by city
