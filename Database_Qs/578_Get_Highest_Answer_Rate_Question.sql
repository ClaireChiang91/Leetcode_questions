#the question didn't ask us to output the rate
#the only request is to ask give the question with the highest answer rate 
select question_id as survey_log
from surveylog
where answer_id  is not null
group by question_id
order by count(1) desc
limit 1


#another way is to calculate the answer rate and output the highest one
SELECT question_id AS survey_log
FROM SurveyLog
GROUP BY question_id
ORDER BY SUM(action="answer")/SUM(action="show") DESC
LIMIT 1; 
