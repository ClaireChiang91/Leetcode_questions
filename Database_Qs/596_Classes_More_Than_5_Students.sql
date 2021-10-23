#having
#The HAVING clause is often used with the GROUP BY clause to filter groups based on a specified condition. 
#If you omit the GROUP BY clause, the HAVING clause behaves like the WHERE clause.

#distinct:return only distinct (different) values

select class from courses group by class having count(distinct student)>=5;
