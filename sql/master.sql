use recommend;
 -- all predict
select count(a.user_id) from (
select user_id,item_id from tb_test_predict 
where time >='2014-12-14'
group by user_id,item_id 
order by user_id
)as a
;

-- 18 buy 
create table tb_test_result as
select * from tb_tianchi_user where
(time>='2014-12-18 00' and time<='2014-12-18 24' and behavior_type ='4')

