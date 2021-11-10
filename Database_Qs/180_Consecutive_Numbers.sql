#subqueries
select distinct Num as ConsecutiveNums
from (select Num, lag (Num, 1) over (order by id) as Num1, 
	lag (Num, 2) over (order by id) as Num2
	from Logs) as sub
where Num = Num1 and Num1 = Num2;

#using cte 
with cte as (select num, lag(num,1) over (order by id ) as num1, lag(num,2) over (order by id ) as num2 from Logs)
select distinct num as ConsecutiveNums 
from cte
where num=num1 and num=num2;
