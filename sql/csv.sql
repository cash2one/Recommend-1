SELECT * FROM tb_i_feature INTO OUTFILE 'D:/tb_i_feature.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
SELECT * FROM tb_u_feature INTO OUTFILE 'D:/tb_u_feature.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
SELECT * FROM tb_c_feature INTO OUTFILE 'D:/tb_c_feature.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
SELECT * FROM tb_uc_feature INTO OUTFILE 'D:/tb_uc_feature.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
SELECT * FROM tb_i_feature_test INTO OUTFILE 'D:/tb_i_feature_test.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
SELECT * FROM tb_u_feature_test INTO OUTFILE 'D:/tb_u_feature_test.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
SELECT * FROM tb_c_feature_test INTO OUTFILE 'D:/tb_c_feature_test.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
CREATE TABLE tb_tianchi_user
          (
                    user_id       CHAR (20)
                  , item_id       CHAR(20)
                  , behavior_type CHAR(20)
                  , user_geohash  CHAR(20)
                  , item_category CHAR(20)
                  ,               TIME CHAR(20)
          )
;

CREATE TABLE tb_result
          (
					user_id       CHAR (20)
                  , item_id       CHAR(20)
                  
          )
;

CREATE TABLE tb_tianchi_item
          (
                    item_id       CHAR(20)
                  , item_geohash  CHAR(20)
                  , item_category CHAR(20)
          )
;

LOAD data INFILE 'E:/PycharmProjects/Recommend/tianchi_fresh_comp_train_user.csv' INTO TABLE tb_tianchi_user fields TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD data local INFILE 'D:/PycharmProjects/Recommend/data/tianchi_mobile_recommend_train_item.csv' INTO TABLE tb_tianchi_item fields TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
truncate table tb_result; 

LOAD data INFILE 'D:/6648-3064-120305341.csv' INTO TABLE tb_result fields TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';


select * from tb_result 
where user_id not in ('136592694','115761083','112658053','135792408','120305341') 
and 
item_id+'\r' not in (select item_id from tmp1 )
INTO OUTFILE 'D:/3064-120305341.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

select * from tb_result INTO OUTFILE 'D:/6648-3064-120305341.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
