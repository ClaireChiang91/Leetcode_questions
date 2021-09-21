/*to_date function is converting string into date format*/
select w1.id from Weather w1, Weather w2 where TO_DATE(w1.RecordDate)-TO_DATE(w2.RecordDate)=1 and w1.Temperature>w2.Temperature
