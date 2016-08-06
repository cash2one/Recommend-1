
-- i_feature
DROP TABLE IF EXISTS `tb_i_feature`;

CREATE TABLE tb_i_feature AS
          (
                    SELECT
                              a.item_id
                            , SUM(CASE WHEN a.behavior_type='1' THEN a.alluser ELSE 0 END)AS all1
                            , SUM(CASE WHEN a.behavior_type='2' THEN a.alluser ELSE 0 END)AS all2
                            , SUM(CASE WHEN a.behavior_type='3' THEN a.alluser ELSE 0 END)AS all3
                            , SUM(CASE WHEN a.behavior_type='4' THEN a.alluser ELSE 0 END)AS all4
                            , SUM(a.alluser)                                              AS allcount
                            , SUM(CASE WHEN a.behavior_type='1' THEN a.actuser ELSE 0 END)AS act1
                            , SUM(CASE WHEN a.behavior_type='2' THEN a.actuser ELSE 0 END)AS act2
                            , SUM(CASE WHEN a.behavior_type='3' THEN a.actuser ELSE 0 END)AS act3
                            , SUM(CASE WHEN a.behavior_type='4' THEN a.actuser ELSE 0 END)AS act4
                            , SUM(a.actuser)                                              AS actcount
                    FROM
                              (
                                        SELECT
                                                  item_id
                                                , behavior_type
                                                , COUNT(user_id)         AS alluser
                                                , COUNT(DISTINCT user_id)AS actuser
                                        FROM
                                                  tb_tianchi_user
                                        GROUP BY
                                                  item_id
                                                , behavior_type) AS a
                    GROUP BY
                              a.item_id
          )
;

SELECT COUNT(*) FROM tb_i_feature;

SELECT * FROM tb_i_feature LIMIT 10;

-- c_feature
DROP TABLE IF EXISTS `tb_c_feature`;

CREATE TABLE tb_c_feature AS
          (
                    SELECT
                              a.item_category
                            , SUM(CASE WHEN a.behavior_type='1' THEN a.alluser ELSE 0 END)                AS all1
                            , SUM(CASE WHEN a.behavior_type='2' THEN a.alluser ELSE 0 END)                AS all2
                            , SUM(CASE WHEN a.behavior_type='3' THEN a.alluser ELSE 0 END)                AS all3
                            , SUM(CASE WHEN a.behavior_type='4' THEN a.alluser ELSE 0 END)                AS all4
                            , SUM(a.alluser)                                                              AS allcount
                            , SUM(CASE WHEN a.behavior_type='4' THEN a.alluser ELSE 0 END)/SUM(a.alluser) AS allturnrate
                            , SUM(CASE WHEN a.behavior_type='1' THEN a.actuser ELSE 0 END)                AS act1
                            , SUM(CASE WHEN a.behavior_type='2' THEN a.actuser ELSE 0 END)                AS act2
                            , SUM(CASE WHEN a.behavior_type='3' THEN a.actuser ELSE 0 END)                AS act3
                            , SUM(CASE WHEN a.behavior_type='4' THEN a.actuser ELSE 0 END)                AS act4
                            , SUM(a.actuser)                                                              AS actcount
                            , SUM(CASE WHEN a.behavior_type='4' THEN a.actuser ELSE 0 END)/SUM(a.actuser) AS actturnrate
                    FROM
                              (
                                        SELECT
                                                  item_category
                                                , behavior_type
                                                , COUNT(user_id)         AS alluser
                                                , COUNT(DISTINCT user_id)AS actuser
                                        FROM
                                                  tb_tianchi_user
                                        GROUP BY
                                                  item_category
                                                , behavior_type) AS a
                    GROUP BY
                              a.item_category
          )
;
          
 SELECT COUNT(*) FROM tb_c_feature ;

 SELECT * FROM tb_c_feature limit 10 ;
