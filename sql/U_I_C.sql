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


-- 转化率
DROP TABLE IF EXISTS `tb_conversion`;
create table tb_conversion
select user_id,
sum(case when behavior_type='1' then 1 else 0 end)as s1,
sum(case when behavior_type='2' then 1 else 0 end)as s2,
sum(case when behavior_type='3' then 1 else 0 end)as s3,
sum(case when behavior_type='4' then 1 else 0 end)as s4,
sum(case when behavior_type='4' then 1 else 0 end)/(
sum(case when behavior_type='1' then 1 else 0 end)+
sum(case when behavior_type='2' then 1 else 0 end)+
sum(case when behavior_type='3' then 1 else 0 end)+
sum(case when behavior_type='4' then 1 else 0 end))as rate
from tb_tianchi_user
group by user_id,behavior_type
order by rate desc,s4 desc,s3 desc,s2 desc,s1 desc; 
select * from tb_conversion limit 10;
