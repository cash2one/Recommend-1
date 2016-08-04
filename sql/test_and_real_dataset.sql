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

