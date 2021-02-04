/* Average gpa for all students
*/

select m.Description as 'Major', avg(gpa) as 'GPA'
	from Student s
	join major m on m.id = s.MajorId
	where s.StateCode <> 'OH'
	group by m.Description
	having avg(gpa) >= 3.0;
	

