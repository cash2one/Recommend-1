-- item_usernum_18_24_nov
DROP TABLE IF EXISTS `tb_item_usernum_18_24_nov`;

CREATE TABLE tb_item_usernum_18_24_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_18_24_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_18_24_nov ;

SELECT * FROM tb_item_usernum_18_24_nov limit 10 ;
-- item_usernum_19_25_nov
DROP TABLE IF EXISTS `tb_item_usernum_19_25_nov`;

CREATE TABLE tb_item_usernum_19_25_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_19_25_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_19_25_nov ;

SELECT * FROM tb_item_usernum_19_25_nov limit 10 ;
-- item_usernum_20_26_nov
DROP TABLE IF EXISTS `tb_item_usernum_20_26_nov`;

CREATE TABLE tb_item_usernum_20_26_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_20_26_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_20_26_nov ;

SELECT * FROM tb_item_usernum_20_26_nov limit 10 ;
-- item_usernum_21_27_nov
DROP TABLE IF EXISTS `tb_item_usernum_21_27_nov`;

CREATE TABLE tb_item_usernum_21_27_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_21_27_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_21_27_nov ;

SELECT * FROM tb_item_usernum_21_27_nov limit 10 ;
-- item_usernum_22_28_nov
DROP TABLE IF EXISTS `tb_item_usernum_22_28_nov`;

CREATE TABLE tb_item_usernum_22_28_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_22_28_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_22_28_nov ;

SELECT * FROM tb_item_usernum_22_28_nov limit 10 ;
-- item_usernum_23_29_nov
DROP TABLE IF EXISTS `tb_item_usernum_23_29_nov`;

CREATE TABLE tb_item_usernum_23_29_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_23_29_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_23_29_nov ;

SELECT * FROM tb_item_usernum_23_29_nov limit 10 ;
-- item_usernum_24_30_nov
DROP TABLE IF EXISTS `tb_item_usernum_24_30_nov`;

CREATE TABLE tb_item_usernum_24_30_nov AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_24_30_nov
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_24_30_nov ;

SELECT * FROM tb_item_usernum_24_30_nov limit 10 ;
-- item_usernum_25_01_dec
DROP TABLE IF EXISTS `tb_item_usernum_25_01_dec`;

CREATE TABLE tb_item_usernum_25_01_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_25_01_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_25_01_dec ;

SELECT * FROM tb_item_usernum_25_01_dec limit 10 ;
-- item_usernum_26_02_dec
DROP TABLE IF EXISTS `tb_item_usernum_26_02_dec`;

CREATE TABLE tb_item_usernum_26_02_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_26_02_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_26_02_dec ;

SELECT * FROM tb_item_usernum_26_02_dec limit 10 ;
-- item_usernum_27_03_dec
DROP TABLE IF EXISTS `tb_item_usernum_27_03_dec`;

CREATE TABLE tb_item_usernum_27_03_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_27_03_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_27_03_dec ;

SELECT * FROM tb_item_usernum_27_03_dec limit 10 ;
-- item_usernum_28_04_dec
DROP TABLE IF EXISTS `tb_item_usernum_28_04_dec`;

CREATE TABLE tb_item_usernum_28_04_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_28_04_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_28_04_dec ;

SELECT * FROM tb_item_usernum_28_04_dec limit 10 ;
-- item_usernum_29_05_dec
DROP TABLE IF EXISTS `tb_item_usernum_29_05_dec`;

CREATE TABLE tb_item_usernum_29_05_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_29_05_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_29_05_dec ;

SELECT * FROM tb_item_usernum_29_05_dec limit 10 ;
-- item_usernum_30_06_dec
DROP TABLE IF EXISTS `tb_item_usernum_30_06_dec`;

CREATE TABLE tb_item_usernum_30_06_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_30_06_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_30_06_dec ;

SELECT * FROM tb_item_usernum_30_06_dec limit 10 ;
-- item_usernum_01_07_dec
DROP TABLE IF EXISTS `tb_item_usernum_01_07_dec`;

CREATE TABLE tb_item_usernum_01_07_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_01_07_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_01_07_dec ;

SELECT * FROM tb_item_usernum_01_07_dec limit 10 ;
-- item_usernum_02_08_dec
DROP TABLE IF EXISTS `tb_item_usernum_02_08_dec`;

CREATE TABLE tb_item_usernum_02_08_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_02_08_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_02_08_dec ;

SELECT * FROM tb_item_usernum_02_08_dec limit 10 ;
-- item_usernum_03_09_dec
DROP TABLE IF EXISTS `tb_item_usernum_03_09_dec`;

CREATE TABLE tb_item_usernum_03_09_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_03_09_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_03_09_dec ;

SELECT * FROM tb_item_usernum_03_09_dec limit 10 ;
-- item_usernum_04_10_dec
DROP TABLE IF EXISTS `tb_item_usernum_04_10_dec`;

CREATE TABLE tb_item_usernum_04_10_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_04_10_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_04_10_dec ;

SELECT * FROM tb_item_usernum_04_10_dec limit 10 ;
-- item_usernum_05_11_dec
DROP TABLE IF EXISTS `tb_item_usernum_05_11_dec`;

CREATE TABLE tb_item_usernum_05_11_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_05_11_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_05_11_dec ;

SELECT * FROM tb_item_usernum_05_11_dec limit 10 ;
-- item_usernum_06_12_dec
DROP TABLE IF EXISTS `tb_item_usernum_06_12_dec`;

CREATE TABLE tb_item_usernum_06_12_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_06_12_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_06_12_dec ;

SELECT * FROM tb_item_usernum_06_12_dec limit 10 ;
-- item_usernum_07_13_dec
DROP TABLE IF EXISTS `tb_item_usernum_07_13_dec`;

CREATE TABLE tb_item_usernum_07_13_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_07_13_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_07_13_dec ;

SELECT * FROM tb_item_usernum_07_13_dec limit 10 ;
-- item_usernum_08_14_dec
DROP TABLE IF EXISTS `tb_item_usernum_08_14_dec`;

CREATE TABLE tb_item_usernum_08_14_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_08_14_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_08_14_dec ;

SELECT * FROM tb_item_usernum_08_14_dec limit 10 ;
-- item_usernum_09_15_dec
DROP TABLE IF EXISTS `tb_item_usernum_09_15_dec`;

CREATE TABLE tb_item_usernum_09_15_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_09_15_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_09_15_dec ;

SELECT * FROM tb_item_usernum_09_15_dec limit 10 ;
-- item_usernum_10_16_dec
DROP TABLE IF EXISTS `tb_item_usernum_10_16_dec`;

CREATE TABLE tb_item_usernum_10_16_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_10_16_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_10_16_dec ;

SELECT * FROM tb_item_usernum_10_16_dec limit 10 ;
-- item_usernum_11_17_dec
DROP TABLE IF EXISTS `tb_item_usernum_11_17_dec`;

CREATE TABLE tb_item_usernum_11_17_dec AS
          (
                    SELECT
                              item_id
        , COUNT(user_id)         AS alluser
        , COUNT(DISTINCT user_id)AS actuser
                    FROM
                              tb_train_11_17_dec
GROUP BY
          item_id
ORDER BY
          actuser DESC
        , alluser DESC
          )
;

SELECT COUNT(*) FROM tb_item_usernum_11_17_dec ;

SELECT * FROM tb_item_usernum_11_17_dec limit 10 ;