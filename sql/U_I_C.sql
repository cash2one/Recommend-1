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
-- u_feature
DROP TABLE IF EXISTS `tb_u_feature`;

CREATE TABLE tb_u_featur AS
          (
                    SELECT
                              user_id
                            , SUM(CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS c1
                            , SUM(CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS c2
                            , SUM(CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS c3
                            , SUM(CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS c4
                            , count(*)as count
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS rate
                    FROM
                              tb_tianchi_user
                    GROUP BY
                              user_id
                    ORDER BY
                              c4 DESC
                            , c3 DESC
                            , c2 DESC
                            , c1 DESC
          )
;

-- SELECT COUNT(*) FROM tb_u_feature ;

-- SELECT * FROM tb_u_feature limit 10 ;

-- 商品热度
DROP TABLE IF EXISTS `tb_heat_item`;

CREATE TABLE tb_heat_item AS
          (
                    SELECT
                              item_id
                            , SUM(CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS c1
                            , SUM(CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS c2
                            , SUM(CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS c3
                            , SUM(CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS c4
                            , count(*)as count
                    FROM
                              tb_tianchi_user
                    GROUP BY
                              item_id
                    ORDER BY
                              c4 DESC
                            , c3 DESC
                            , c2 DESC
                            , c1 DESC
          )
;

SELECT COUNT(*) FROM tb_heat_item ;

SELECT * FROM tb_heat_item limit 10;

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

-- turnhead
DROP TABLE IF EXISTS `tb_turnhead`;

CREATE TABLE tb_turnhead AS
SELECT
          a.item_category
        , SUM(CASE WHEN a.count>1 THEN 1 ELSE 0 END)               AS actuser
        , COUNT(user_id)                                           AS alluser
        , SUM(CASE WHEN a.count>1 THEN 1 ELSE 0 END)/COUNT(user_id)AS rate
FROM
          (
                    SELECT
                              item_category
                            , user_id
                            , COUNT( user_id)AS COUNT
                    FROM
                              tb_tianchi_user
                    WHERE 
                              behavior_type='4'
                    GROUP BY
                              item_category
                            , user_id)AS a
GROUP BY
          a.item_category
ORDER BY
          rate DESC
;

SELECT COUNT(*) FROM tb_turnhead ;

SELECT * FROM tb_turnhead limit 10 ;