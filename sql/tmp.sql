select count(*) from tb_uc_feature_10_16_dec as a join 
(select user_id,item_category from tb_train_10_16_dec_result where behavior_type='4' group by user_id,item_category)as b
on  a.user_id=b.user_id and a.item_category=b.item_category;

select count(*) from  
(select user_id,item_category from tb_train_10_16_dec_result where behavior_type='4' group by user_id,item_category)as a;

select count(*) from tb_uc_feature_10_16_dec;

select 2086/222337

