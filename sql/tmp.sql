select  t7b1/actt1b1 as a ,t7b4 from tb_c_feature_11_17_dec order by  a desc;
create table tmp(
item_id char(20),
item_category char(20)

);
SET SQL_MODE = '';
insert into tmp (select item_id,item_category from tb_tianchi_item where item_id+'r' in  (select item_id from tb_result)) ;
drop table tmp1;
describe tmp
;

select item_id from tmp where item_category='3064\r'
;

select * from tb_result as a  join (select item_id from tmp where item_category='3064\r')as b on a.item_id+'\r'=b.item_id
;
select * from tb_c_feature_test as a  join tmp as b on a.item_category+'\r'= b.item_category group by a.item_category order by a.t7b1 desc

