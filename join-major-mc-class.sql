select * 
	from Major m 
	join MajorClass mc on mc.MajorId = m.Id
	join class c on c.Id = mc.ClassId