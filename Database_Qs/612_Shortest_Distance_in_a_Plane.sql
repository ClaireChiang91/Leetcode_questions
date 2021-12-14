# Write your MySQL query statement below

with cte as(
select
p1.x as x1,p1.y as y1, p2.x as x2,p2.y as y2,
ROUND(POWER(POWER(p1.x-p2.x,2)+POWER(p1.y-p2.y,2),0.5),2) as distance
from
Point2D p1,Point2D p2
where
(p1.x,p1.y) <> (p2.x,p2.y)

)

select min(distance) as shortest from cte
