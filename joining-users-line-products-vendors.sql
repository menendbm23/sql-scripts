select r.id, r.description, r.status, r.total, u.lastname, v.name as 'Company', 
	p.name, p.price, l.quantity, p.price*l.quantity as 'Subtotal'
	from requests r
	join users u on u.id = r.userid
    join lineitems l on l.requestid = r.id
    join products p on p.id = l.productid
    join vendors v on v.id = p.vendorId;
    
    
    select r.description, sum(p.price * l.quantity) as 'Total'
	from requests r
	join users u on u.id = r.userid
    join lineitems l on l.requestid = r.id
    join products p on p.id = l.productid
    join vendors v on v.id = p.vendorId
    group by r.description; 
    
    
  

     