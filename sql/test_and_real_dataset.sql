use recommend;

-- 测试集
drop table IF EXISTS tb_test;

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
--
--
-- create table tb_train_11_17_dec
drop table IF EXISTS tb_train_11_17_dec;

create table tb_train_11_17_dec as
select * from tb_tianchi_user where
(time>='2014-12-11 00' and time<='2014-12-16 24' and behavior_type!='1')
or
(time>='2014-12-17 00' and time<='2014-12-17 24');

select * from tb_train_11_17_dec;

-- create table tb_train_11_17_dec_result
drop table IF EXISTS tb_train_11_17_dec_result;

create table tb_train_11_17_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-18 00' and time <='2014-12-18 24' and behavior_type='4')
;
select * from tb_train_11_17_dec_result;
--
--
-- create table tb_train_18_24_nov
drop table IF EXISTS tb_train_18_24_nov;

create table tb_train_18_24_nov as
select * from tb_tianchi_user where
(time>='2014-11-18 00' and time<='2014-11-23 24' and behavior_type!='1')
or
(time>='2014-11-24 00' and time<='2014-11-24 24');

select * from tb_train_18_24_nov;

-- create table tb_train_18_24_nov_result
drop table IF EXISTS tb_train_18_24_nov_result;

create table tb_train_18_24_nov_result as
select * from tb_tianchi_user where
(time >='2014-11-25 00' and time <='2014-11-25 24' and behavior_type='4')
;
select * from tb_train_18_24_nov_result;
--
--
-- create table tb_train_19_25_nov
drop table IF EXISTS tb_train_19_25_nov;

create table tb_train_19_25_nov as
select * from tb_tianchi_user where
(time>='2014-11-19 00' and time<='2014-11-24 24' and behavior_type!='1')
or
(time>='2014-11-25 00' and time<='2014-11-25 24');

select * from tb_train_19_25_nov;

-- create table tb_train_19_25_nov_result
drop table IF EXISTS tb_train_19_25_nov_result;

create table tb_train_19_25_nov_result as
select * from tb_tianchi_user where
(time >='2014-11-26 00' and time <='2014-11-26 24' and behavior_type='4')
;
select * from tb_train_19_25_nov_result;
--
--
-- create table tb_train_20_26_nov
drop table IF EXISTS tb_train_20_26_nov;

create table tb_train_20_26_nov as
select * from tb_tianchi_user where
(time>='2014-11-20 00' and time<='2014-11-25 24' and behavior_type!='1')
or
(time>='2014-11-26 00' and time<='2014-11-26 24');

select * from tb_train_20_26_nov;

-- create table tb_train_20_26_nov_result
drop table IF EXISTS tb_train_20_26_nov_result;

create table tb_train_20_26_nov_result as
select * from tb_tianchi_user where
(time >='2014-11-27 00' and time <='2014-11-27 24' and behavior_type='4')
;
select * from tb_train_20_26_nov_result;

--
--
-- create table tb_train_21_27_nov
drop table IF EXISTS tb_train_21_27_nov;

create table tb_train_21_27_nov as
select * from tb_tianchi_user where
(time>='2014-11-21 00' and time<='2014-11-26 24' and behavior_type!='1')
or
(time>='2014-11-27 00' and time<='2014-11-27 24');

select * from tb_train_21_27_nov;

-- create table tb_train_21_27_nov_result
drop table IF EXISTS tb_train_21_27_nov_result;

create table tb_train_21_27_nov_result as
select * from tb_tianchi_user where
(time >='2014-11-28 00' and time <='2014-11-28 24' and behavior_type='4')
;
select * from tb_train_21_27_nov_result;
--
--
-- create table tb_train_24_30_nov
drop table IF EXISTS tb_train_24_30_nov;

create table tb_train_24_30_nov as
select * from tb_tianchi_user where
(time>='2014-11-24 00' and time<='2014-11-29 24' and behavior_type!='1')
or
(time>='2014-11-30 00' and time<='2014-11-30 24');

select * from tb_train_24_30_nov;

-- create table tb_train_24_30_nov_result
drop table IF EXISTS tb_train_24_30_nov_result;

create table tb_train_24_30_nov_result as
select * from tb_tianchi_user where
(time >='2014-12-01 00' and time <='2014-12-01 24' and behavior_type='4')
;
select * from tb_train_24_30_nov_result;
--
--
-- create table tb_train_24_30_nov
drop table IF EXISTS tb_train_24_30_nov;

create table tb_train_24_30_nov as
select * from tb_tianchi_user where
(time>='2014-11-24 00' and time<='2014-11-29 24' and behavior_type!='1')
or
(time>='2014-11-30 00' and time<='2014-11-30 24');

select * from tb_train_24_30_nov;

-- create table tb_train_24_30_nov_result
drop table IF EXISTS tb_train_24_30_nov_result;

create table tb_train_24_30_nov_result as
select * from tb_tianchi_user where
(time >='2014-12-01 00' and time <='2014-12-01 24' and behavior_type='4')
;
select * from tb_train_24_30_nov_result;
--
--
-- create table tb_train_25_01_dec
drop table IF EXISTS tb_train_25_01_dec;

create table tb_train_25_01_dec as
select * from tb_tianchi_user where
(time>='2014-11-25 00' and time<='2014-11-30 24' and behavior_type!='1')
or
(time>='2014-12-01 00' and time<='2014-12-01 24');

select * from tb_train_25_01_dec;

-- create table tb_train_25_01_dec_result
drop table IF EXISTS tb_train_25_01_dec_result;

create table tb_train_25_01_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-02 00' and time <='2014-12-02 24' and behavior_type='4')
;
select * from tb_train_25_01_dec_result;
--
--
-- create table tb_train_26_02_dec
drop table IF EXISTS tb_train_26_02_dec;

create table tb_train_26_02_dec as
select * from tb_tianchi_user where
(time>='2014-11-26 00' and time<='2014-12-01 24' and behavior_type!='1')
or
(time>='2014-12-02 00' and time<='2014-12-02 24');

select * from tb_train_26_02_dec;

-- create table tb_train_26_02_dec_result
drop table IF EXISTS tb_train_26_02_dec_result;

create table tb_train_26_02_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-03 00' and time <='2014-12-03 24' and behavior_type='4')
;
select * from tb_train_26_02_dec_result;
--
--
-- create table tb_train_27_03_dec
drop table IF EXISTS tb_train_27_03_dec;

create table tb_train_27_03_dec as
select * from tb_tianchi_user where
(time>='2014-11-27 00' and time<='2014-12-02 24' and behavior_type!='1')
or
(time>='2014-12-03 00' and time<='2014-12-03 24');

select * from tb_train_27_03_dec;

-- create table tb_train_27_03_dec_result
drop table IF EXISTS tb_train_27_03_dec_result;

create table tb_train_27_03_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-04 00' and time <='2014-12-04 24' and behavior_type='4')
;
select * from tb_train_27_03_dec_result;
--
--
-- create table tb_train_28_04_dec
drop table IF EXISTS tb_train_28_04_dec;

create table tb_train_28_04_dec as
select * from tb_tianchi_user where
(time>='2014-11-28 00' and time<='2014-12-03 24' and behavior_type!='1')
or
(time>='2014-12-04 00' and time<='2014-12-04 24');

select * from tb_train_28_04_dec;

-- create table tb_train_28_04_dec_result
drop table IF EXISTS tb_train_28_04_dec_result;

create table tb_train_28_04_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-05 00' and time <='2014-12-05 24' and behavior_type='4')
;
select * from tb_train_28_04_dec_result;
--
--
-- create table tb_train_29_05_dec
drop table IF EXISTS tb_train_29_05_dec;

create table tb_train_29_05_dec as
select * from tb_tianchi_user where
(time>='2014-11-29 00' and time<='2014-12-04 24' and behavior_type!='1')
or
(time>='2014-12-05 00' and time<='2014-12-05 24');

select * from tb_train_29_05_dec;

-- create table tb_train_29_05_dec_result
drop table IF EXISTS tb_train_29_05_dec_result;

create table tb_train_29_05_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-06 00' and time <='2014-12-06 24' and behavior_type='4')
;
select * from tb_train_29_05_dec_result;
--
--
-- create table tb_train_30_06_dec
drop table IF EXISTS tb_train_30_06_dec;

create table tb_train_30_06_dec as
select * from tb_tianchi_user where
(time>='2014-11-30 00' and time<='2014-12-05 24' and behavior_type!='1')
or
(time>='2014-12-06 00' and time<='2014-12-06 24');

select * from tb_train_30_06_dec;

-- create table tb_train_30_06_dec_result
drop table IF EXISTS tb_train_30_06_dec_result;

create table tb_train_30_06_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-07 00' and time <='2014-12-07 24' and behavior_type='4')
;
select * from tb_train_30_06_dec_result;
--
--
-- create table tb_train_01_07_dec
drop table IF EXISTS tb_train_01_07_dec;

create table tb_train_01_07_dec as
select * from tb_tianchi_user where
(time>='2014-12-01 00' and time<='2014-12-06 24' and behavior_type!='1')
or
(time>='2014-12-07 00' and time<='2014-12-07 24');

select * from tb_train_01_07_dec;

-- create table tb_train_01_07_dec_result
drop table IF EXISTS tb_train_01_07_dec_result;

create table tb_train_01_07_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-08 00' and time <='2014-12-08 24' and behavior_type='4')
;
select * from tb_train_01_07_dec_result;
--
--
-- create table tb_train_02_08_dec
drop table IF EXISTS tb_train_02_08_dec;

create table tb_train_02_08_dec as
select * from tb_tianchi_user where
(time>='2014-12-02 00' and time<='2014-12-07 24' and behavior_type!='1')
or
(time>='2014-12-08 00' and time<='2014-12-08 24');

select * from tb_train_02_08_dec;

-- create table tb_train_02_08_dec_result
drop table IF EXISTS tb_train_02_08_dec_result;

create table tb_train_02_08_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-09 00' and time <='2014-12-09 24' and behavior_type='4')
;
select * from tb_train_02_08_dec_result;
--
--
-- create table tb_train_03_09_dec
drop table IF EXISTS tb_train_03_09_dec;

create table tb_train_03_09_dec as
select * from tb_tianchi_user where
(time>='2014-12-03 00' and time<='2014-12-08 24' and behavior_type!='1')
or
(time>='2014-12-09 00' and time<='2014-12-09 24');

select * from tb_train_03_09_dec;

-- create table tb_train_03_09_dec_result
drop table IF EXISTS tb_train_03_09_dec_result;

create table tb_train_03_09_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-10 00' and time <='2014-12-10 24' and behavior_type='4')
;
select * from tb_train_03_09_dec_result;
--
--
-- create table tb_train_04_10_dec
drop table IF EXISTS tb_train_04_10_dec;

create table tb_train_04_10_dec as
select * from tb_tianchi_user where
(time>='2014-12-04 00' and time<='2014-12-09 24' and behavior_type!='1')
or
(time>='2014-12-10 00' and time<='2014-12-10 24');

select * from tb_train_04_10_dec;

-- create table tb_train_04_10_dec_result
drop table IF EXISTS tb_train_04_10_dec_result;

create table tb_train_04_10_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-11 00' and time <='2014-12-11 24' and behavior_type='4')
;
select * from tb_train_04_10_dec_result;
--
--
-- create table tb_train_05_11_dec
drop table IF EXISTS tb_train_05_11_dec;

create table tb_train_05_11_dec as
select * from tb_tianchi_user where
(time>='2014-12-05 00' and time<='2014-12-10 24' and behavior_type!='1')
or
(time>='2014-12-11 00' and time<='2014-12-11 24');

select * from tb_train_05_11_dec;

-- create table tb_train_05_11_dec_result
drop table IF EXISTS tb_train_05_11_dec_result;

create table tb_train_05_11_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-12 00' and time <='2014-12-12 24' and behavior_type='4')
;
select * from tb_train_05_11_dec_result;
--
--
-- create table tb_train_06_12_dec
drop table IF EXISTS tb_train_06_12_dec;

create table tb_train_06_12_dec as
select * from tb_tianchi_user where
(time>='2014-12-06 00' and time<='2014-12-11 24' and behavior_type!='1')
or
(time>='2014-12-12 00' and time<='2014-12-12 24');

select * from tb_train_06_12_dec;
-- create table tb_train_06_12_dec_result
drop table IF EXISTS tb_train_06_12_dec_result;

create table tb_train_06_12_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-13 00' and time <='2014-12-13 24' and behavior_type='4')
;
select * from tb_train_06_12_dec_result;
--
--
-- create table tb_train_07_13_dec
drop table IF EXISTS tb_train_07_13_dec;

create table tb_train_07_13_dec as
select * from tb_tianchi_user where
(time>='2014-12-07 00' and time<='2014-12-12 24' and behavior_type!='1')
or
(time>='2014-12-13 00' and time<='2014-12-13 24');

select * from tb_train_07_13_dec;

-- create table tb_train_07_13_dec_result
drop table IF EXISTS tb_train_07_13_dec_result;

create table tb_train_07_13_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-14 00' and time <='2014-12-14 24' and behavior_type='4')
;
select * from tb_train_07_13_dec_result;
--
--
-- create table tb_train_08_14_dec
drop table IF EXISTS tb_train_08_14_dec;

create table tb_train_08_14_dec as
select * from tb_tianchi_user where
(time>='2014-12-08 00' and time<='2014-12-13 24' and behavior_type!='1')
or
(time>='2014-12-14 00' and time<='2014-12-14 24');

select * from tb_train_08_14_dec;

-- create table tb_train_08_14_dec_result
drop table IF EXISTS tb_train_08_14_dec_result;

create table tb_train_08_14_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-15 00' and time <='2014-12-15 24' and behavior_type='4')
;
select * from tb_train_08_14_dec_result;
--
--
-- create table tb_train_09_15_dec
drop table IF EXISTS tb_train_09_15_dec;

create table tb_train_09_15_dec as
select * from tb_tianchi_user where
(time>='2014-12-09 00' and time<='2014-12-14 24' and behavior_type!='1')
or
(time>='2014-12-15 00' and time<='2014-12-15 24');

select * from tb_train_09_15_dec;

-- create table tb_train_09_15_dec_result
drop table IF EXISTS tb_train_09_15_dec_result;

create table tb_train_09_15_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-16 00' and time <='2014-12-16 24' and behavior_type='4')
;
select * from tb_train_09_15_dec_result;
--
--
-- create table tb_train_10_16_dec
drop table IF EXISTS tb_train_10_16_dec;

create table tb_train_10_16_dec as
select * from tb_tianchi_user where
(time>='2014-12-10 00' and time<='2014-12-15 24' and behavior_type!='1')
or
(time>='2014-12-16 00' and time<='2014-12-16 24');

select * from tb_train_10_16_dec;

-- create table tb_train_10_16_dec_result
drop table IF EXISTS tb_train_10_16_dec_result;

create table tb_train_10_16_dec_result as
select * from tb_tianchi_user where
(time >='2014-12-17 00' and time <='2014-12-17 24' and behavior_type='4')
;
select * from tb_train_10_16_dec_result;
