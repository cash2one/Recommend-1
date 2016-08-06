-- turnhead_18_24_nov
DROP TABLE IF EXISTS `tb_turnhead_18_24_nov`;

CREATE TABLE tb_turnhead_18_24_nov AS
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
                              tb_train_18_24_nov
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

SELECT COUNT(*) FROM tb_turnhead_18_24_nov ;

SELECT * FROM tb_turnhead_18_24_nov limit 10 ;
-- turnhead_19_25_nov
DROP TABLE IF EXISTS `tb_turnhead_19_25_nov`;

CREATE TABLE tb_turnhead_19_25_nov AS
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
                              tb_train_19_25_nov
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

SELECT COUNT(*) FROM tb_turnhead_19_25_nov ;

SELECT * FROM tb_turnhead_19_25_nov limit 10 ;
-- turnhead_20_26_nov
DROP TABLE IF EXISTS `tb_turnhead_20_26_nov`;

CREATE TABLE tb_turnhead_20_26_nov AS
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
                              tb_train_20_26_nov
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

SELECT COUNT(*) FROM tb_turnhead_20_26_nov ;

SELECT * FROM tb_turnhead_20_26_nov limit 10 ;
-- turnhead_21_27_nov
DROP TABLE IF EXISTS `tb_turnhead_21_27_nov`;

CREATE TABLE tb_turnhead_21_27_nov AS
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
                              tb_train_21_27_nov
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

SELECT COUNT(*) FROM tb_turnhead_21_27_nov ;

SELECT * FROM tb_turnhead_21_27_nov limit 10 ;
-- turnhead_22_28_nov
DROP TABLE IF EXISTS `tb_turnhead_22_28_nov`;

CREATE TABLE tb_turnhead_22_28_nov AS
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
                              tb_train_22_28_nov
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

SELECT COUNT(*) FROM tb_turnhead_22_28_nov ;

SELECT * FROM tb_turnhead_22_28_nov limit 10 ;
-- turnhead_23_29_nov
DROP TABLE IF EXISTS `tb_turnhead_23_29_nov`;

CREATE TABLE tb_turnhead_23_29_nov AS
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
                              tb_train_23_29_nov
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

SELECT COUNT(*) FROM tb_turnhead_23_29_nov ;

SELECT * FROM tb_turnhead_23_29_nov limit 10 ;
-- turnhead_24_30_nov
DROP TABLE IF EXISTS `tb_turnhead_24_30_nov`;

CREATE TABLE tb_turnhead_24_30_nov AS
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
                              tb_train_24_30_nov
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

SELECT COUNT(*) FROM tb_turnhead_24_30_nov ;

SELECT * FROM tb_turnhead_24_30_nov limit 10 ;
-- turnhead_25_01_dec
DROP TABLE IF EXISTS `tb_turnhead_25_01_dec`;

CREATE TABLE tb_turnhead_25_01_dec AS
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
                              tb_train_25_01_dec
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

SELECT COUNT(*) FROM tb_turnhead_25_01_dec ;

SELECT * FROM tb_turnhead_25_01_dec limit 10 ;
-- turnhead_26_02_dec
DROP TABLE IF EXISTS `tb_turnhead_26_02_dec`;

CREATE TABLE tb_turnhead_26_02_dec AS
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
                              tb_train_26_02_dec
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

SELECT COUNT(*) FROM tb_turnhead_26_02_dec ;

SELECT * FROM tb_turnhead_26_02_dec limit 10 ;
-- turnhead_27_03_dec
DROP TABLE IF EXISTS `tb_turnhead_27_03_dec`;

CREATE TABLE tb_turnhead_27_03_dec AS
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
                              tb_train_27_03_dec
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

SELECT COUNT(*) FROM tb_turnhead_27_03_dec ;

SELECT * FROM tb_turnhead_27_03_dec limit 10 ;
-- turnhead_28_04_dec
DROP TABLE IF EXISTS `tb_turnhead_28_04_dec`;

CREATE TABLE tb_turnhead_28_04_dec AS
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
                              tb_train_28_04_dec
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

SELECT COUNT(*) FROM tb_turnhead_28_04_dec ;

SELECT * FROM tb_turnhead_28_04_dec limit 10 ;
-- turnhead_29_05_dec
DROP TABLE IF EXISTS `tb_turnhead_29_05_dec`;

CREATE TABLE tb_turnhead_29_05_dec AS
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
                              tb_train_29_05_dec
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

SELECT COUNT(*) FROM tb_turnhead_29_05_dec ;

SELECT * FROM tb_turnhead_29_05_dec limit 10 ;
-- turnhead_30_06_dec
DROP TABLE IF EXISTS `tb_turnhead_30_06_dec`;

CREATE TABLE tb_turnhead_30_06_dec AS
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
                              tb_train_30_06_dec
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

SELECT COUNT(*) FROM tb_turnhead_30_06_dec ;

SELECT * FROM tb_turnhead_30_06_dec limit 10 ;
-- turnhead_01_07_dec
DROP TABLE IF EXISTS `tb_turnhead_01_07_dec`;

CREATE TABLE tb_turnhead_01_07_dec AS
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
                              tb_train_01_07_dec
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

SELECT COUNT(*) FROM tb_turnhead_01_07_dec ;

SELECT * FROM tb_turnhead_01_07_dec limit 10 ;
-- turnhead_02_08_dec
DROP TABLE IF EXISTS `tb_turnhead_02_08_dec`;

CREATE TABLE tb_turnhead_02_08_dec AS
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
                              tb_train_02_08_dec
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

SELECT COUNT(*) FROM tb_turnhead_02_08_dec ;

SELECT * FROM tb_turnhead_02_08_dec limit 10 ;
-- turnhead_03_09_dec
DROP TABLE IF EXISTS `tb_turnhead_03_09_dec`;

CREATE TABLE tb_turnhead_03_09_dec AS
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
                              tb_train_03_09_dec
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

SELECT COUNT(*) FROM tb_turnhead_03_09_dec ;

SELECT * FROM tb_turnhead_03_09_dec limit 10 ;
-- turnhead_04_10_dec
DROP TABLE IF EXISTS `tb_turnhead_04_10_dec`;

CREATE TABLE tb_turnhead_04_10_dec AS
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
                              tb_train_04_10_dec
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

SELECT COUNT(*) FROM tb_turnhead_04_10_dec ;

SELECT * FROM tb_turnhead_04_10_dec limit 10 ;
-- turnhead_05_11_dec
DROP TABLE IF EXISTS `tb_turnhead_05_11_dec`;

CREATE TABLE tb_turnhead_05_11_dec AS
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
                              tb_train_05_11_dec
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

SELECT COUNT(*) FROM tb_turnhead_05_11_dec ;

SELECT * FROM tb_turnhead_05_11_dec limit 10 ;
-- turnhead_06_12_dec
DROP TABLE IF EXISTS `tb_turnhead_06_12_dec`;

CREATE TABLE tb_turnhead_06_12_dec AS
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
                              tb_train_06_12_dec
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

SELECT COUNT(*) FROM tb_turnhead_06_12_dec ;

SELECT * FROM tb_turnhead_06_12_dec limit 10 ;
-- turnhead_07_13_dec
DROP TABLE IF EXISTS `tb_turnhead_07_13_dec`;

CREATE TABLE tb_turnhead_07_13_dec AS
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
                              tb_train_07_13_dec
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

SELECT COUNT(*) FROM tb_turnhead_07_13_dec ;

SELECT * FROM tb_turnhead_07_13_dec limit 10 ;
-- turnhead_08_14_dec
DROP TABLE IF EXISTS `tb_turnhead_08_14_dec`;

CREATE TABLE tb_turnhead_08_14_dec AS
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
                              tb_train_08_14_dec
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

SELECT COUNT(*) FROM tb_turnhead_08_14_dec ;

SELECT * FROM tb_turnhead_08_14_dec limit 10 ;
-- turnhead_09_15_dec
DROP TABLE IF EXISTS `tb_turnhead_09_15_dec`;

CREATE TABLE tb_turnhead_09_15_dec AS
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
                              tb_train_09_15_dec
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

SELECT COUNT(*) FROM tb_turnhead_09_15_dec ;

SELECT * FROM tb_turnhead_09_15_dec limit 10 ;
-- turnhead_10_16_dec
DROP TABLE IF EXISTS `tb_turnhead_10_16_dec`;

CREATE TABLE tb_turnhead_10_16_dec AS
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
                              tb_train_10_16_dec
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

SELECT COUNT(*) FROM tb_turnhead_10_16_dec ;

SELECT * FROM tb_turnhead_10_16_dec limit 10 ;
-- turnhead_11_17_dec
DROP TABLE IF EXISTS `tb_turnhead_11_17_dec`;

CREATE TABLE tb_turnhead_11_17_dec AS
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
                              tb_train_11_17_dec
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

SELECT COUNT(*) FROM tb_turnhead_11_17_dec ;

SELECT * FROM tb_turnhead_11_17_dec limit 10 ;