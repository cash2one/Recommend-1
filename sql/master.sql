SELECT * FROM tb_i_feature INTO OUTFILE 'D:/tb_i_feature.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n';
select count(*) from tb_u_feature_predict