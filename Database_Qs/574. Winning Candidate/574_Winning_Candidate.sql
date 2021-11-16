
#subquery and join 

SELECT Name
FROM 
    Candidate a, 
    (SELECT CandidateId
     FROM Vote
     GROUP BY CandidateId
     ORDER BY COUNT(*) DESC
     LIMIT 1) b
WHERE a.id = b.CandidateId; 

#cte and join
with cte as (SELECT CandidateId
     FROM Vote
     GROUP BY CandidateId
     ORDER BY COUNT(*) DESC
     LIMIT 1)

SELECT Name
FROM 
    Candidate a, 
    cte b
WHERE a.id = b.CandidateId; 

#cte 
with cte as (SELECT CandidateId
     FROM Vote
     GROUP BY CandidateId
     ORDER BY COUNT(*) DESC
     LIMIT 1)

SELECT Name
FROM 
    Candidate 
    where id in (select * from cte); 
