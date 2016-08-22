select * from tb_u_feature_test as z join tb_result as c  on z.user_id=c.user_id where t3b4=0 and t1b4=0 group by z.user_id order by z.t7b1 desc;

select * from tb_result where user_id='136592694'