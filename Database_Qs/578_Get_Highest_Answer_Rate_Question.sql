#the question didn't ask us to output the rate
#the only request is to ask give the question with the highest answer rate 

SELECT question_id AS survey_log FROM SurveyLog
WHERE answer_id IS NOT NULL
GROUP BY question_id
ORDER BY count(*) DESC 
LIMIT 1;



#another way is to calculate the answer rate and output the highest one
SELECT question_id AS survey_log
FROM SurveyLog
GROUP BY question_id
ORDER BY SUM(action="answer")/SUM(action="show") DESC
LIMIT 1; 
