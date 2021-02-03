select s.id, CONCAT(s.firstname, ' ', s.lastname) as 'Name', 
		s.gpa, s.sat, 
		m.description as 'Major'
	from Student s
	Join Major m
		on s.MajorId = m.Id
	where s.GPA > 3.5 AND (s.majorID = 3 OR s.Majorid = 5)
	Order by s.GPA desc, s.sat desc