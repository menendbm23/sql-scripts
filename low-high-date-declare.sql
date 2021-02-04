declare @lowdate datetime = '2017-10-01 00:00:00';
declare @highdate datetime = '2017-12-31 23:59:59';

select *
	from Orders o
	where date >= @lowdate 
		and date <= @highdate
	 