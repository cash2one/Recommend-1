use recommend;
-- train 11-17待预测ui商品对数量:54w
select count(a.item_id) from (
select user_id,item_id from tb_train_11_17
group by user_id,item_id 
order by user_id
)as a
;

-- train 11-17 7 day users which showed in 8th day numbers 17186 2992 2885
select count(a.user_id) from (
select distinct user_id from tb_train_11_17 
)as a;
select count(distinct user_id) from tb_train_11_17_result; 
select count(a.user_id) from (
select distinct user_id from tb_train_11_17 
)as a
where a.user_id in (
select distinct user_id 
from tb_train_11_17_result
)
;

-- train 11-17 7 day item which showed in 8th day numbers 438080 5850 2520
select count(distinct item_id ) from tb_train_11_17; 
select count(distinct item_id ) from tb_train_11_17_result; 
select count(a.item_id ) from (
select distinct item_id from tb_train_11_17 
)as a
where a.item_id in (
select distinct item_id
from tb_train_11_17_result
)
;

-- train 11-17 7 day item_category  which showed in 8th day numbers 6426 1587 1556
select count(distinct item_category ) from tb_train_11_17; 
select count(distinct item_category ) from tb_train_11_17_result; 
select count(a.item_category ) from (
select distinct item_category  from tb_train_11_17 
)as a
where a.item_category  in (
select distinct item_category 
from tb_train_11_17_result
)
;

