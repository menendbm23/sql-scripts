select s.id, s.Lastname, m.Description
	from student s 
	left join major m on m.Id = s.MajorId
	where m.Description is null 
