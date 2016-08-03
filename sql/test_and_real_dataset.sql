use recommend;
drop table tb_test_predict;
create table tb_test_predict as
select * from tb_tianchi_user where
(time>='2014-12-10 00' and time<='2014-12-16 24' and behavior_type!='1')
or
(time>='2014-12-17 00' and time<='2014-12-17 24');

select * from tb_test_predict;


create table tb_real_predict as
select * from tb_tianchi_user where
(time>='2014-12-11 00' and time<='2014-12-17 24' and behavior_type!='1')
or
(time>='2014-12-18 00' and time<='2014-12-18 24');

select * from tb_real_predict;