select item_category,all1 as call1,all2 as call2,all3 as call3,all4 as call4,allcount as callc,allturnrate callr,
act1 as cact1,act2 as cact2,act3 as cact3,act4 as cact4,actcount as cactc,actturnrate as cactr
from tb_c_feature;
select item_id,all1 as iall1,all2 as iall2,all3 as iall3,all4 as iall4,allcount as iallc,
act1 as iact1,act2 as iact2,act3 as iact3,act4 as iact4,actcount as iactc
 from tb_i_feature;
select user_id, c1,c2,c3,c4 ,count,rate from tb_u_feature;