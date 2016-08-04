use recommend;

-- create train 11-17 
drop table tb_train_11_17;

create table tb_train_11_17 as
select * from tb_tianchi_user where
(time>='2014-12-11 00' and time<='2014-12-16 24' and behavior_type!='1')
or
(time>='2014-12-17 00' and time<='2014-12-17 24');

select * from tb_train_11_17;

-- create train 11-17 result
drop table tb_train_11_17_result;

create table tb_train_11_17_result as
select * from tb_tianchi_user where
(time >='2014-12-18 00' and time <='2014-12-18 24' and behavior_type='4')
;
select * from tb_train_11_17_result;



-- 测试集
drop table tb_test;

create table tb_test as
select * from tb_tianchi_user where
(time>='2014-12-12 00' and time<='2014-12-17 24' and behavior_type!='1')
or
(time>='2014-12-18 00' and time<='2014-12-18 24');

select * from tb_test;

-- data output csv
select user_id,item_id from tb_tianchi_user where 
(time >='2014-12-18 00' and time <='2014-12-18 24')
group by user_id,item_id
order by user_id
into outfile 'D:/asd.csv'
fields terminated by ','
enclosed by '"'
lines terminated by '\n'; 

-- train 11-17待预测ui商品对数量:54w
select count(a.item_id) from (
select user_id,item_id from tb_train_11_17
group by user_id,item_id 
order by user_id
)as a
;

-- train 11-17 7 day users which showed in 8th day numbers 17186 2992 2885
select count(a.user_id) from (
select distinct user_id from tb_train_11_17 
)as a;
select count(distinct user_id) from tb_train_11_17_result; 
select count(a.user_id) from (
select distinct user_id from tb_train_11_17 
)as a
where a.user_id in (
select distinct user_id 
from tb_train_11_17_result
)
;

-- train 11-17 7 day item which showed in 8th day numbers 438080 5850 2520
select count(distinct item_id ) from tb_train_11_17; 
select count(distinct item_id ) from tb_train_11_17_result; 
select count(a.item_id ) from (
select distinct item_id from tb_train_11_17 
)as a
where a.item_id in (
select distinct item_id
from tb_train_11_17_result
)
;
