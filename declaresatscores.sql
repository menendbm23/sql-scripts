declare @sat int = 1200 

select *
	from student 
	where SAT >= @sat 
	order by SAT desc, lastname;