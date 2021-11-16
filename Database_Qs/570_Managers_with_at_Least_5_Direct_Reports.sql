#subquery
select name from Employee where id in (
    select distinct managerID from Employee 
    group by managerID
    having count(*)>=5);
    
