select * from tb_u_feature as a 
join (select z.user_id,z.t7b1,z.t7b4 from tb_u_feature_test as z join tb_result as c  on z.user_id=c.user_id where t1b4='0' group by z.user_id order by z.t7b1 desc)b
on a.user_id=b.user_id
;
select * from tb_result where user_id='132626507'
;
select * from tb_u_feature where user_id='132626507'
;
select * from tb_i_feature_test where item_id='174054968';
select * from tb_u_feature_test as z join tb_result as c  on z.user_id=c.user_id where t1b4='0' and t7b1 = t1b1 group by z.user_id order by z.t7b1 desc
;
select * from tb_u_feature_test where user_id='135567210';
select * from tb_uc_feature_test where  item_category='3064';
select *from tb_c_feature as a join tmp as b on a.item_category+'\r'=b.item_category and a.act1=1;

select user_id ,count(user_id)as c from tb_result group by user_id having count(user_id)>1 order by c desc;

select * from tb_uc_feature_test where item_category+'\r' in (select item_category from tmp as a join tb_result as b on a.item_id+'\r' = b.item_id where  b.user_id='39329021') and user_id='39329021';


select count(*) from  tmp;

insert into tmp select a.item_id,a.item_category from tb_tianchi_item as a join tb_result as b  on  a.item_id+'\r' = b.item_id;
SET SQL_SAFE_UPDATES = 0;
SET SQL_MODE = '';

select * from tb_uc_feature_test as a join tmp as s on a.item_category+'\r'=s.item_category ;
select * from tb_uc_feature_test where item_category='4245' order by t7b1 desc;

select * from tmp as s join tb_result as a on a.item_id=s.item_id+'\r'; 
use recommend;

select count(*) from tb_result ;
select * from tb_i_feature where item_id in (select item_id from tmp  where item_category='11236\r');

select *from tb_test  where item_category='9017';

select * from tb_i_feature_test  as s join tb_result as a on a.item_id=s.item_id+'\r';

delete from tb_result where item_id+'\r'  in (select item_id from tmp  where item_category+'\r' in ('887'))and user_id ='39329021';

delete from tb_result where item_category in ('10412','11497','3660','8792') and ;
-- geo!!!!!!!!!!!!!!
