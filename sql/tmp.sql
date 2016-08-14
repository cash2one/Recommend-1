select count(user_id) from tb_u_feature_01_07_dec where user_id in (select distinct user_id from tb_train_01_07_dec_result where behavior_type='4')
;select count(distinct user_id) from tb_train_01_07_dec_result where behavior_type='4';
select 2781/2912;
select * from tb_c_feature