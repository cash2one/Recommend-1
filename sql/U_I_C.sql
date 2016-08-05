USE recommend;
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
-- 用户活跃度
DROP TABLE IF EXISTS `tb_liveness`;
CREATE TABLE tb_liveness AS
(
          SELECT
                    user_id
                  , COUNT( * ) AS COUNT
          FROM
                    tb_tianchi_user
          GROUP BY
                    user_id
          ORDER BY
                    COUNT DESC );
SELECT
          COUNT(*)
FROM
          tb_liveness
;

-- 商品热度
DROP TABLE IF EXISTS `tb_heat_item`;
CREATE TABLE tb_heat_item AS
(
          SELECT
                    item_id
                  , COUNT( * ) AS COUNT
          FROM
                    tb_tianchi_user
          GROUP BY
                    item_id
          ORDER BY
                    COUNT DESC );
SELECT
          COUNT(*)
FROM
          tb_heat_item
;

-- 类别热度
DROP TABLE IF EXISTS `tb_heat_category`;
CREATE TABLE tb_heat_category AS
(
          SELECT
                    item_category
                  , COUNT( * ) AS COUNT
          FROM
                    tb_tianchi_user
          GROUP BY
                    item_category
          ORDER BY
                    COUNT DESC );
SELECT COUNT(*) FROM tb_heat_category;

-- 转化率
DROP TABLE IF EXISTS `tb_conversion`;
CREATE TABLE tb_conversion
SELECT
          user_id
        , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)                                                                                                                                                                                                                      AS s1
        , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)                                                                                                                                                                                                                      AS s2
        , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)                                                                                                                                                                                                                      AS s3
        , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)                                                                                                                                                                                                                      AS s4
        , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
        ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
          SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
          SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
          SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS rate
FROM
          tb_tianchi_user
GROUP BY
          user_id
        , behavior_type
ORDER BY
          rate DESC
        , s4 DESC
        , s3 DESC
        , s2 DESC
        , s1 DESC
;

SELECT * FROM tb_conversion LIMIT 10;

-- 交互人数
DROP TABLE  tb_item_usernum;
CREATE TABLE tb_item_usernum
SELECT
          item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
FROM
          tb_tianchi_user
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
;

SELECT * FROM tb_item_usernum;

-- 回头率
DROP TABLE  tb_turnhead;
CREATE TABLE tb_turnhead AS
SELECT
          item_category
        , COUNT(user_id)                         AS alluser
        , COUNT(DISTINCT user_id)                AS actuser
        , COUNT(DISTINCT user_id) /COUNT(user_id)AS rate
FROM
          tb_tianchi_user
GROUP BY
          item_category
ORDER BY
          rate DESC
        , actuser DESC
        , alluser DESC
;

SELECT * FROM tb_turnhead;