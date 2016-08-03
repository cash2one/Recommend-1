use recommend;

DROP TABLE IF EXISTS `tb_conversion`;
create table tb_conversion
select user_id,
sum(case when behavior_type='1' then 1 else 0 end)as s1,
sum(case when behavior_type='2' then 1 else 0 end)as s2,
sum(case when behavior_type='3' then 1 else 0 end)as s3,
sum(case when behavior_type='4' then 1 else 0 end)as s4,
sum(case when behavior_type='4' then 1 else 0 end)/(
sum(case when behavior_type='1' then 1 else 0 end)+
sum(case when behavior_type='2' then 1 else 0 end)+
sum(case when behavior_type='3' then 1 else 0 end)+
sum(case when behavior_type='4' then 1 else 0 end))as rate
from tb_tianchi_user
group by user_id,behavior_type
order by s4 desc,s3 desc,s2 desc,s1 desc,rate desc; 
select * from tb_conversion limit 10;