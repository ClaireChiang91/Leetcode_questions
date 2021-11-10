#submitted successfully for the below
select dept.name as Department, emp.name as Employee, emp.Salary from Employee as emp left join Department as dept 
on emp.departmentId=dept.id 
WHERE (emp.DepartmentID, emp.Salary) in (Select DepartmentID, MAX(Salary) FROM Employee GROUP BY DepartmentID);

#cannot submit over leetcode for MySQL. BUT it should be able to use cte function
with cte as (Select DepartmentID, MAX(Salary) FROM Employee GROUP BY DepartmentID)
select dept.name as Department, emp.name as Employee, emp.Salary from Employee as emp left join Department as dept 
on emp.departmentId=dept.id 
WHERE (emp.DepartmentID, emp.Salary) in cte;
