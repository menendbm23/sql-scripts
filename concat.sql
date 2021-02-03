select c.subject, c.section, 
		CONCAT (i.Lastname, ' , ', i.Firstname) as 'Name', 
		i.YearsExperience, i.IsTenured
	from class c
	join Instructor i on i.id = c.instructorid 
where i.YearsExperience > 9  
order by i.lastname, c.Subject
	
		