
#you may also replace a.free=1 with a.free=Ture;

select distinct a.seat_id from cinema a join cinema b on
abs(a.seat_id-b.seat_id)=1 and a.free=1 and b.free=1 
order by a.seat_id;
