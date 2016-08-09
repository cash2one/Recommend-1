-- u_feature_test
DROP TABLE IF EXISTS `tb_u_feature_test`;

CREATE TABLE tb_u_feature_test AS
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
                              tb_test
                    GROUP BY
                              user_id
                    ORDER BY
                              c4 DESC
                            , c3 DESC
                            , c2 DESC
                            , c1 DESC
          )
;

-- SELECT COUNT(*) FROM tb_u_feature_test ;

-- SELECT * FROM tb_u_feature_test limit 10 ;

-- i_feature_test
DROP TABLE IF EXISTS `tb_i_feature_test`;

CREATE TABLE tb_i_feature_test AS
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
                                                  tb_test
                                        GROUP BY
                                                  item_id
                                                , behavior_type) AS a
                    GROUP BY
                              a.item_id
          )
;

SELECT COUNT(*) FROM tb_i_feature_test;

SELECT * FROM tb_i_feature_test LIMIT 10;

-- c_feature_test
DROP TABLE IF EXISTS `tb_c_feature_test`;

CREATE TABLE tb_c_feature_test AS
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
                                                  tb_test
                                        GROUP BY
                                                  item_category
                                                , behavior_type) AS a
                    GROUP BY
                              a.item_category
          )
;
          
 SELECT COUNT(*) FROM tb_c_feature_test ;

 SELECT * FROM tb_c_feature_test limit 10 ;