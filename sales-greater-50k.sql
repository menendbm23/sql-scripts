select * 
	from customers c
	left join orders o on o.CustomerId = c.Id
	left join OrderLines ol on ol.OrdersId = o.Id
	where c.sales >= 50000