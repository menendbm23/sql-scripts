insert user (name, address, city, state, zip, email, phone, role) 
values ('Bryan', '7994 Stonegate Dr.', 'Cincinnati', 'OH', '45255', 'menendbm@gmail.com', '513-505-2244', 'Java Student');
    
insert vehicle (year, model, make, vin, trim, ownerID)
value
	('2012', 'Volkswagen', 'GTI', '1234567', 'ex', (select ID from user where name = 'Bryan'));
  
select v.*, u.name  
	from vehicle v 
    left join user u on v.ownerid = u.id;

update vehicle set ownerid = 999 where id = 2;
update vehicle set ownerid = 1 where id = 2;
    
    