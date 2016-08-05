USE recommend;
-- 测试集
DROP TABLE IF EXISTS tb_test;

CREATE TABLE tb_test AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-12 00'
                    AND TIME         <='2014-12-17 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-18 00'
                    AND TIME<='2014-12-18 24'
          )
;

SELECT * FROM tb_test;

-- data output csv
SELECT
          user_id
        , item_id
FROM
          tb_tianchi_user
WHERE
          (
                        TIME >='2014-12-18 00'
                    AND TIME <='2014-12-18 24'
          )
GROUP BY
          user_id
        , item_id
ORDER BY
          user_id
INTO      outfile 'D:/asd.csv' fields terminated BY ',' enclosed BY '"' lines terminated BY '\n'
;

--
--
-- create table tb_train_11_17_dec
DROP TABLE IF EXISTS tb_train_11_17_dec
;

CREATE TABLE tb_train_11_17_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-11 00'
                    AND TIME         <='2014-12-16 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-17 00'
                    AND TIME<='2014-12-17 24'
          )
;

SELECT * FROM tb_train_11_17_dec;

-- create table tb_train_11_17_dec_result
DROP TABLE IF EXISTS tb_train_11_17_dec_result
;

CREATE TABLE tb_train_11_17_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-18 00'
                    AND TIME        <='2014-12-18 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_11_17_dec_result;

--
--
-- create table tb_train_18_24_nov
DROP TABLE IF EXISTS tb_train_18_24_nov
;

CREATE TABLE tb_train_18_24_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-18 00'
                    AND TIME         <='2014-11-23 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-24 00'
                    AND TIME<='2014-11-24 24'
          )
;

SELECT * FROM tb_train_18_24_nov;

-- create table tb_train_18_24_nov_result
DROP TABLE IF EXISTS tb_train_18_24_nov_result
;

CREATE TABLE tb_train_18_24_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-11-25 00'
                    AND TIME        <='2014-11-25 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_18_24_nov_result;

--
--
-- create table tb_train_19_25_nov
DROP TABLE IF EXISTS tb_train_19_25_nov
;

CREATE TABLE tb_train_19_25_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-19 00'
                    AND TIME         <='2014-11-24 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-25 00'
                    AND TIME<='2014-11-25 24'
          )
;

SELECT * FROM tb_train_19_25_nov;

-- create table tb_train_19_25_nov_result
DROP TABLE IF EXISTS tb_train_19_25_nov_result
;

CREATE TABLE tb_train_19_25_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-11-26 00'
                    AND TIME        <='2014-11-26 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_19_25_nov_result;

--
--
-- create table tb_train_20_26_nov
DROP TABLE IF EXISTS tb_train_20_26_nov
;

CREATE TABLE tb_train_20_26_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-20 00'
                    AND TIME         <='2014-11-25 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-26 00'
                    AND TIME<='2014-11-26 24'
          )
;

SELECT * FROM tb_train_20_26_nov;

-- create table tb_train_20_26_nov_result
DROP TABLE IF EXISTS tb_train_20_26_nov_result
;

CREATE TABLE tb_train_20_26_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-11-27 00'
                    AND TIME        <='2014-11-27 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_20_26_nov_result;

--
--
-- create table tb_train_21_27_nov
DROP TABLE IF EXISTS tb_train_21_27_nov
;

CREATE TABLE tb_train_21_27_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-21 00'
                    AND TIME         <='2014-11-26 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-27 00'
                    AND TIME<='2014-11-27 24'
          )
;

SELECT * FROM tb_train_21_27_nov;

-- create table tb_train_21_27_nov_result
DROP TABLE IF EXISTS tb_train_21_27_nov_result
;

CREATE TABLE tb_train_21_27_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-11-28 00'
                    AND TIME        <='2014-11-28 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_21_27_nov_result;

--
--
-- create table tb_train_22_28_nov
DROP TABLE IF EXISTS tb_train_22_28_nov
;

CREATE TABLE tb_train_22_28_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-22 00'
                    AND TIME         <='2014-11-27 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-28 00'
                    AND TIME<='2014-11-28 24'
          )
;

SELECT * FROM tb_train_22_28_nov;

-- create table tb_train_22_28_nov_result
DROP TABLE IF EXISTS tb_train_22_28_nov_result
;

CREATE TABLE tb_train_22_28_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-11-29 00'
                    AND TIME        <='2014-11-29 24'
                    AND behavior_type='4'
          )
;


SELECT * FROM tb_train_22_28_nov_result;
--
--
-- create table tb_train_23_29_nov
DROP TABLE IF EXISTS tb_train_23_29_nov
;

CREATE TABLE tb_train_23_29_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-23 00'
                    AND TIME         <='2014-11-28 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-29 00'
                    AND TIME<='2014-11-29 24'
          )
;

SELECT * FROM tb_train_23_29_nov;

-- create table tb_train_23_29_nov_result
DROP TABLE IF EXISTS tb_train_23_29_nov_result
;

CREATE TABLE tb_train_24_30_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-11-30 00'
                    AND TIME        <='2014-11-30 24'
                    AND behavior_type='4'
          )
;

--
--
-- create table tb_train_24_30_nov
DROP TABLE IF EXISTS tb_train_24_30_nov
;

CREATE TABLE tb_train_24_30_nov AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-24 00'
                    AND TIME         <='2014-11-29 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-11-30 00'
                    AND TIME<='2014-11-30 24'
          )
;

SELECT * FROM tb_train_24_30_nov;

-- create table tb_train_24_30_nov_result
DROP TABLE IF EXISTS tb_train_24_30_nov_result
;

CREATE TABLE tb_train_24_30_nov_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-01 00'
                    AND TIME        <='2014-12-01 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_24_30_nov_result;

--
--
-- create table tb_train_25_01_dec
DROP TABLE IF EXISTS tb_train_25_01_dec
;

CREATE TABLE tb_train_25_01_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-25 00'
                    AND TIME         <='2014-11-30 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-01 00'
                    AND TIME<='2014-12-01 24'
          )
;

SELECT * FROM tb_train_25_01_dec;

-- create table tb_train_25_01_dec_result
DROP TABLE IF EXISTS tb_train_25_01_dec_result
;

CREATE TABLE tb_train_25_01_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-02 00'
                    AND TIME        <='2014-12-02 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_25_01_dec_result;

--
--
-- create table tb_train_26_02_dec
DROP TABLE IF EXISTS tb_train_26_02_dec
;

CREATE TABLE tb_train_26_02_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-26 00'
                    AND TIME         <='2014-12-01 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-02 00'
                    AND TIME<='2014-12-02 24'
          )
;

SELECT * FROM tb_train_26_02_dec;

-- create table tb_train_26_02_dec_result
DROP TABLE IF EXISTS tb_train_26_02_dec_result
;

CREATE TABLE tb_train_26_02_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-03 00'
                    AND TIME        <='2014-12-03 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_26_02_dec_result;

--
--
-- create table tb_train_27_03_dec
DROP TABLE IF EXISTS tb_train_27_03_dec
;

CREATE TABLE tb_train_27_03_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-27 00'
                    AND TIME         <='2014-12-02 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-03 00'
                    AND TIME<='2014-12-03 24'
          )
;

SELECT * FROM tb_train_27_03_dec;

-- create table tb_train_27_03_dec_result
DROP TABLE IF EXISTS tb_train_27_03_dec_result
;

CREATE TABLE tb_train_27_03_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-04 00'
                    AND TIME        <='2014-12-04 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_27_03_dec_result;

--
--
-- create table tb_train_28_04_dec
DROP TABLE IF EXISTS tb_train_28_04_dec
;

CREATE TABLE tb_train_28_04_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-28 00'
                    AND TIME         <='2014-12-03 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-04 00'
                    AND TIME<='2014-12-04 24'
          )
;

SELECT * FROM tb_train_28_04_dec;

-- create table tb_train_28_04_dec_result
DROP TABLE IF EXISTS tb_train_28_04_dec_result
;

CREATE TABLE tb_train_28_04_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-05 00'
                    AND TIME        <='2014-12-05 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_28_04_dec_result;

--
--
-- create table tb_train_29_05_dec
DROP TABLE IF EXISTS tb_train_29_05_dec
;

CREATE TABLE tb_train_29_05_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-29 00'
                    AND TIME         <='2014-12-04 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-05 00'
                    AND TIME<='2014-12-05 24'
          )
;

SELECT * FROM tb_train_29_05_dec;

-- create table tb_train_29_05_dec_result
DROP TABLE IF EXISTS tb_train_29_05_dec_result
;

CREATE TABLE tb_train_29_05_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-06 00'
                    AND TIME        <='2014-12-06 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_29_05_dec_result;

--
--
-- create table tb_train_30_06_dec
DROP TABLE IF EXISTS tb_train_30_06_dec
;

CREATE TABLE tb_train_30_06_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-11-30 00'
                    AND TIME         <='2014-12-05 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-06 00'
                    AND TIME<='2014-12-06 24'
          )
;

SELECT * FROM tb_train_30_06_dec;

-- create table tb_train_30_06_dec_result
DROP TABLE IF EXISTS tb_train_30_06_dec_result
;

CREATE TABLE tb_train_30_06_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-07 00'
                    AND TIME        <='2014-12-07 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_30_06_dec_result;

--
--
-- create table tb_train_01_07_dec
DROP TABLE IF EXISTS tb_train_01_07_dec
;

CREATE TABLE tb_train_01_07_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-01 00'
                    AND TIME         <='2014-12-06 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-07 00'
                    AND TIME<='2014-12-07 24'
          )
;

SELECT * FROM tb_train_01_07_dec;

-- create table tb_train_01_07_dec_result
DROP TABLE IF EXISTS tb_train_01_07_dec_result
;

CREATE TABLE tb_train_01_07_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-08 00'
                    AND TIME        <='2014-12-08 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_01_07_dec_result;

--
--
-- create table tb_train_02_08_dec
DROP TABLE IF EXISTS tb_train_02_08_dec
;

CREATE TABLE tb_train_02_08_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-02 00'
                    AND TIME         <='2014-12-07 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-08 00'
                    AND TIME<='2014-12-08 24'
          )
;

SELECT * FROM tb_train_02_08_dec;

-- create table tb_train_02_08_dec_result
DROP TABLE IF EXISTS tb_train_02_08_dec_result
;

CREATE TABLE tb_train_02_08_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-09 00'
                    AND TIME        <='2014-12-09 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_02_08_dec_result;

--
--
-- create table tb_train_03_09_dec
DROP TABLE IF EXISTS tb_train_03_09_dec
;

CREATE TABLE tb_train_03_09_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-03 00'
                    AND TIME         <='2014-12-08 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-09 00'
                    AND TIME<='2014-12-09 24'
          )
;

SELECT * FROM tb_train_03_09_dec;

-- create table tb_train_03_09_dec_result
DROP TABLE IF EXISTS tb_train_03_09_dec_result
;

CREATE TABLE tb_train_03_09_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-10 00'
                    AND TIME        <='2014-12-10 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_03_09_dec_result;

--
--
-- create table tb_train_04_10_dec
DROP TABLE IF EXISTS tb_train_04_10_dec
;

CREATE TABLE tb_train_04_10_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-04 00'
                    AND TIME         <='2014-12-09 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-10 00'
                    AND TIME<='2014-12-10 24'
          )
;

SELECT * FROM tb_train_04_10_dec;

-- create table tb_train_04_10_dec_result
DROP TABLE IF EXISTS tb_train_04_10_dec_result
;

CREATE TABLE tb_train_04_10_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-11 00'
                    AND TIME        <='2014-12-11 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_04_10_dec_result;

--
--
-- create table tb_train_05_11_dec
DROP TABLE IF EXISTS tb_train_05_11_dec
;

CREATE TABLE tb_train_05_11_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-05 00'
                    AND TIME         <='2014-12-10 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-11 00'
                    AND TIME<='2014-12-11 24'
          )
;

SELECT * FROM tb_train_05_11_dec;

-- create table tb_train_05_11_dec_result
DROP TABLE IF EXISTS tb_train_05_11_dec_result
;

CREATE TABLE tb_train_05_11_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-12 00'
                    AND TIME        <='2014-12-12 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_05_11_dec_result;

--
--
-- create table tb_train_06_12_dec
DROP TABLE IF EXISTS tb_train_06_12_dec
;

CREATE TABLE tb_train_06_12_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-06 00'
                    AND TIME         <='2014-12-11 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-12 00'
                    AND TIME<='2014-12-12 24'
          )
;

SELECT * FROM tb_train_06_12_dec;

-- create table tb_train_06_12_dec_result
DROP TABLE IF EXISTS tb_train_06_12_dec_result
;

CREATE TABLE tb_train_06_12_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-13 00'
                    AND TIME        <='2014-12-13 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_06_12_dec_result;

--
--
-- create table tb_train_07_13_dec
DROP TABLE IF EXISTS tb_train_07_13_dec
;

CREATE TABLE tb_train_07_13_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-07 00'
                    AND TIME         <='2014-12-12 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-13 00'
                    AND TIME<='2014-12-13 24'
          )
;

SELECT * FROM tb_train_07_13_dec;

-- create table tb_train_07_13_dec_result
DROP TABLE IF EXISTS tb_train_07_13_dec_result
;

CREATE TABLE tb_train_07_13_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-14 00'
                    AND TIME        <='2014-12-14 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_07_13_dec_result;

--
--
-- create table tb_train_08_14_dec
DROP TABLE IF EXISTS tb_train_08_14_dec
;

CREATE TABLE tb_train_08_14_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-08 00'
                    AND TIME         <='2014-12-13 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-14 00'
                    AND TIME<='2014-12-14 24'
          )
;

SELECT * FROM tb_train_08_14_dec;

-- create table tb_train_08_14_dec_result
DROP TABLE IF EXISTS tb_train_08_14_dec_result
;

CREATE TABLE tb_train_08_14_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-15 00'
                    AND TIME        <='2014-12-15 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_08_14_dec_result;

--
--
-- create table tb_train_09_15_dec
DROP TABLE IF EXISTS tb_train_09_15_dec
;

CREATE TABLE tb_train_09_15_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-09 00'
                    AND TIME         <='2014-12-14 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-15 00'
                    AND TIME<='2014-12-15 24'
          )
;

SELECT * FROM tb_train_09_15_dec;

-- create table tb_train_09_15_dec_result
DROP TABLE IF EXISTS tb_train_09_15_dec_result
;

CREATE TABLE tb_train_09_15_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-16 00'
                    AND TIME        <='2014-12-16 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_09_15_dec_result;

--
--
-- create table tb_train_10_16_dec
DROP TABLE IF EXISTS tb_train_10_16_dec
;

CREATE TABLE tb_train_10_16_dec AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME         >='2014-12-10 00'
                    AND TIME         <='2014-12-15 24'
                    AND behavior_type!='1'
          )
          OR
          (
                        TIME>='2014-12-16 00'
                    AND TIME<='2014-12-16 24'
          )
;

SELECT * FROM tb_train_10_16_dec;

-- create table tb_train_10_16_dec_result
DROP TABLE IF EXISTS tb_train_10_16_dec_result
;

CREATE TABLE tb_train_10_16_dec_result AS
SELECT
          *
FROM
          tb_tianchi_user
WHERE
          (
                        TIME        >='2014-12-17 00'
                    AND TIME        <='2014-12-17 24'
                    AND behavior_type='4'
          )
;

SELECT * FROM tb_train_10_16_dec_result;