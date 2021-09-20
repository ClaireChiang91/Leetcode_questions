/*Solution 1*/
select Email from 
(
    select Email, count(Email) as counts 
    from Person 
    group by Email
) where counts>1;


/*Solution2*/
select Email from person group by Email having count(Email)>1;
