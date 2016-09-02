select count(*) from tb_uc_feature where b1 =0;
select * from tb_uc_feature order by b1 desc;
select * from tb_uc_feature where b3=0 order by b4 desc;
select * from tb_u_feature where c1<20;
select * from tb_u_feature  order by c1 desc;
select * from tb_c_feature where allturnrate<=0.004 order by all1 desc;
select * from tb_c_feature  order by all1 desc;

select * from tb_uc_feature_test where item_category+'\r' in (select item_category from tmp as a join tb_result as b on a.item_id+'\r' = b.item_id where  b.user_id='113512469');
select item_category from tmp as a join tb_result as b on a.item_id+'\r' = b.item_id where  b.user_id='113512469'
;
select * from tb_test as a join tb_result as s on a.user_id+'\r'=s.user_id and a.item_id+'\r'=s.item_id and a.behavior_type='4';