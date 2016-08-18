select distinct item_id from tb_result ;
select * from tb_tianchi_item where item_id='141412895';
select item_id,item_category from tb_tianchi_item order by item_id,item_category;
select a.item_id,a.item_category from tb_tianchi_item as a join tb_result as b on a.item_id+'\r'=b.item_id join tb_c_feature as c on a.item_category=c.item_category and c.all4=0;