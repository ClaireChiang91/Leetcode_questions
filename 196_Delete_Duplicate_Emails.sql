#using with common table expression to hold a temporary table 


with cte as ( select min(Id) as Id from Person group by Email )

delete from Person where Id not in (select Id from cte);
