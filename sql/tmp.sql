use recommend;


-- train 11-17 7 day item_category  which showed in 8th day numbers 
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
