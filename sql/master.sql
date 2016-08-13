
select count(distinct user_id) from tb_tianchi_user WHERE
	TIME         >='2014-12-12 00'
	AND TIME         <='2014-12-17 24'
	AND behavior_type='4'
    and user_id not in 
(select user_id from tb_u_feature_18_24_nov ) 
	and user_id in (
   select distinct user_id from tb_train_18_24_nov_result
   where behavior_type='4'
    );
    
select count(distinct user_id) from tb_train_18_24_nov_result
   where behavior_type='4';