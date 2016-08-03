
drop table tb_turnhead;
create table tb_turnhead as 
select  item_category, 
count(user_id)as alluser, 
count(distinct user_id) as actuser, 
count(distinct user_id) /count(user_id)as rate 
from tb_tianchi_user 
group by item_category 
order by rate desc,actuser desc,alluser desc;

select * from tb_turnhead;