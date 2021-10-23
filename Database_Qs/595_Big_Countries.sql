#you could simply use or to meet the two condition 
#solution:
#select name, population, area from World where population>25000000 or area>3000000;

#another way is considering union which would be a little bit faster than the above 
select name, population, area from world where area>3000000

union

select name, population, area from world where population>25000000

;
