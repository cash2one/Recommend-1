select * from tb_c_feature_predict
;
truncate table tb_c_feature_predict
;
insert into tb_u_feature_predict VALUES (32383738);
;
describe tb_u_feature_predict;

create table tb_c_feature_predict(
item_category char(20)

)