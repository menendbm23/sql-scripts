use sys;

drop database if exists prsdb;

create database prsdb;

use prsdb;

create table users (
		id int not null primary key auto_increment,
	username varchar(30) not null unique,
	Password varchar(30) not null,
    Firstname varchar(30) not null, 
    Lastname varchar(30) not null, 
    Phone varchar(12),
    Email varchar(255),
    isReviewer tinyint not null default 0,
    isAdmin tinyint not null default 0
);

insert into users (username, password, firstname, lastname, isReviewer, isAdmin)
	values ('sa', 'sa', 'System', 'Admin', 1, 1);

create table Vendors (
		id int not null primary key auto_increment,
	code varchar(10) not null unique, 
    name varchar(30) not null,
    address varchar(30) not null,
    city varchar(30) not null,
	state varchar(2) not null,
    zip varchar(5) not null, 
    phone varchar(12),
    email varchar(255)
);

insert into vendors (code, name, address, city, state, zip)
	values ('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '98032'),
			('TARG', 'Target', '1 Target Way', 'Minneapolis', 'MN', '47464'),
            ('MEIJ', 'Meijer', '1 Meijer Way', 'Detroit', 'MI', '48204');
            
create table Requests (
	id int not null primary key auto_increment,
	description varchar(80) not null,
    justification varchar(80) not null,
    rejectionreason varchar(80), 
    deliverymode varchar(20) not null default 'Pickup',
    status varchar(10) not null default 'NEW',
    total decimal(11,2) not null default 0,
    dateNeeded date not null,
    submittedDate datetime not null default current_timestamp,
    userID int not null, 
    foreign key (userID) references users(id) 
);

insert into requests (description, justification, dateNeeded, userID)
	values ('1st request', 'Just because', '2021-03-01',
		(select id from users where username = 'sa') );
        
create table Products (
	id int not null primary key auto_increment, 
    partnumber varchar(30) not null unique, 
    name varchar(30) not null,
    price decimal(11,2) not null,
    unit varchar(30) not null, 
    photopath varchar(255),
    vendorid int not null,
    foreign key (vendorID) references Vendors(id) 
);

insert into products (partnumber, name, price, unit, VendorID)
	values ('ECHO', 'Echo', 100, 'Each', (select id from vendors where code = 'AMAZ')),
			('SEC', 'Blink', 70, 'Each', (select id from vendors where code = 'AMAZ')),
			('NBA', 'Basketball', 20, 'Each', (select id from vendors where code = 'TARG')),
            ('H2O', 'Water', 2, 'Each', (select id from vendors where code = 'MEIJ'));
            
create table Lineitems (
	id int not null primary key auto_increment, 
    RequestId int not null,
    foreign key (requestID) references Requests(id),
    ProductId int not null,
    foreign key (productID) references Products(id),
    Quantity int not null default 1,
    constraint requestId_productId unique (requestId, productId) 
);
    
insert into Lineitems (RequestId, ProductId, Quantity)
	values ( (select id from requests where id = 1), (select id from products where partNumber = 'ECHO'), 3),
			( (select id from requests where id = 1), (select id from products where partNumber = 'SEC'), 2);
            

		
    
    