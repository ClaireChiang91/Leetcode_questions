/*join the table itself for capturing Manager's salary information*/

select t1.name as Employee from Employee t1 join Employee t2 on t1.ManagerId=t2.Id where t1.Salary>t2.Salary;
