select *
	from class c
	Join MajorClass mc on mc.ClassId = c.id	
	join major m on m.id = mc.MajorId
	where c.Code = 'MAT203'	
	order by c.Code