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
                            , COUNT(*)                                           AS COUNT
                            , COUNT(user_id)                                     AS alluser
                            , COUNT(DISTINCT user_id)                            AS actuser
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