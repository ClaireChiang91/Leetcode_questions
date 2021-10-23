#the numerator: the total number of request accepted
#the denominator:the toala number of request sent



select round(
    
IFNULL(
    
( select count(*) from (select distinct requester_id, accepter_id from RequestAccepted) as A)
/
( select count(*) from (select distinct sender_id, send_to_id from FriendRequest) as B)
    
    ,0)
    
    ,2) as accept_rate;
