SELECT user_id,item_id FROM tb_test where user_id in
(select user_id from tb_u_feature_predict)group by user_id,item_id
INTO OUTFILE 'D:/89.csv' 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
