select * from student;

insert student 
	(Firstname, lastname, SAT, GPA, MajorId) 
Values
	('Smart', 'Engineer', 1500, 3.7, 5
		(select Id from major where description = 'engineering')
	);