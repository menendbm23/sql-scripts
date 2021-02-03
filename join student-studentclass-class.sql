select s.Firstname, s.Lastname, c.Subject, c.Section
	from Student s
	join StudentClass sc on sc.StudentId = s.Id
	join class c on c.id = sc.ClassId
	where c.Subject = 'English'