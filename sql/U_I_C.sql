use recommend;

create table tb_tianchi_user(
user_id char (20),
item_id char(20),
behavior_type char(20),
user_geohash char(20),
item_category char(20),
time char(20)
);


LOAD DATA INFILE 'E:/PycharmProjects/Recommend/tianchi_fresh_comp_train_user.csv'   
INTO TABLE tb_tianchi_user   
FIELDS TERMINATED BY ','   
OPTIONALLY ENCLOSED BY '"'   
LINES TERMINATED BY '\n'; 

-- 用户活跃度
DROP TABLE IF EXISTS `tb_liveness`;

create table tb_liveness as (
SELECT user_id, count( * ) AS count
FROM tb_tianchi_user
GROUP BY user_id
ORDER BY count DESC);

select count(*) from tb_liveness;


-- 商品热度
DROP TABLE IF EXISTS `tb_heat_item`;

create table tb_heat_item as (
SELECT item_id, count( * ) AS count
FROM tb_tianchi_user
GROUP BY item_id
ORDER BY count DESC);

select count(*) from tb_heat_item;


-- 类别热度
DROP TABLE IF EXISTS `tb_heat_category`;

create table tb_heat_category as (
SELECT item_category, count( * ) AS count
FROM tb_tianchi_user
GROUP BY item_category
ORDER BY count DESC);

select count(*) from tb_heat_category;

