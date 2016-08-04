use recommend;

--
--
-- create table tb_train_22_28_nov
drop table IF EXISTS tb_train_22_28_nov;

create table tb_train_22_28_nov as
select * from tb_tianchi_user where
(time>='2014-11-22 00' and time<='2014-11-27 24' and behavior_type!='1')
or
(time>='2014-11-28 00' and time<='2014-11-28 24');

select * from tb_train_22_28_nov;

-- create table tb_train_22_28_nov_result
drop table IF EXISTS tb_train_22_28_nov_result;

create table tb_train_22_28_nov_result as
select * from tb_tianchi_user where
(time >='2014-11-29 00' and time <='2014-11-29 24' and behavior_type='4')
;
select * from tb_train_22_28_nov_result;

