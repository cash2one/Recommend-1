use recommend;
drop table item_usernum;
create table tb_item_usernum
SELECT item_id, count(user_id)as alluser,count(distinct user_id )as actuser
FROM tb_tianchi_user
GROUP BY item_id,user_id
ORDER BY actuser DESC,alluser DESC;

select * from tb_item_usernum;