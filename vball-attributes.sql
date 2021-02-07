use bootcamp;
create table Names (
		id int not null primary key auto_increment,
	name varchar(50) not null,
    height(10) not null, 
    type(20) not null

);

create table Attributes (
		id int not null primary key auto_increment,
	Spiking varchar(2),
    Shots varchar(2),
    Passing varchar(2),
    Setting varchar(2),
    Blocking varchar(2),
    Serve Power varchar(2),
    Serve Accuracy varchar(2),
    Digging varchar(2),
    Quickness varchar(2),
    Jumping varchar(2),
    NameID int,
	foreign key (nameid) references names(id)
);