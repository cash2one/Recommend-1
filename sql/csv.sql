SELECT * FROM tb_i_feature INTO OUTFILE 'D:/tb_i_feature.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';

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

LOAD data INFILE 'E:/PycharmProjects/Recommend/tianchi_fresh_comp_train_user.csv' INTO TABLE tb_tianchi_user fields TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
