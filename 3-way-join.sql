select * 
	from Major m 
	join MajorClass mc on Mc.MajorId = m.id
	join class c on c.Id = mc.ClassId
	join Instructor i on i.id = c.InstructorId