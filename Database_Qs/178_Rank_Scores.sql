
# Write your MySQL query statement below

with cte as (select distinct score from scores)

select s.score, count(cte.score) as 'Rank' from cte, scores as s
where s.score<=cte.score 

group by s.id
order by s.score desc;
