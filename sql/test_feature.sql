-- u_feature_test
DROP TABLE IF EXISTS `tb_u_feature_test`;

CREATE TABLE tb_u_feature_test AS
          (
                    SELECT
                              user_id
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-16 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-18 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-18 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-18 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_test
                    GROUP BY
                              user_id
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



                            , SUM( CASE WHEN behavior_type='1' THEN a.alluser ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN a.alluser ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN a.alluser ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN a.alluser ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN a.alluser ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN a.alluser ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='1' THEN a.alluser ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='2' THEN a.alluser ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='3' THEN a.alluser ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.alluser ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.alluser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.alluser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='1' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='2' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='3' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.alluser ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='1' THEN a.alluser ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='2' THEN a.alluser ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='3' THEN a.alluser ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.alluser ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.alluser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.alluser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='1' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='2' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='3' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.alluser ELSE 0 END)) END)AS t1r1



                            , SUM( CASE WHEN behavior_type='1' THEN a.actuser ELSE 0 END) AS actt7b1
                            , SUM( CASE WHEN behavior_type='2' THEN a.actuser ELSE 0 END) AS actt7b2
                            , SUM( CASE WHEN behavior_type='3' THEN a.actuser ELSE 0 END) AS actt7b3
                            , SUM( CASE WHEN behavior_type='4' THEN a.actuser ELSE 0 END) AS actt7b4
                            , SUM( CASE WHEN behavior_type='4' THEN a.actuser ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN a.actuser ELSE 0 END))AS actt7r1
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='1' THEN a.actuser ELSE 0 END) AS actt3b1
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='2' THEN a.actuser ELSE 0 END) AS actt3b2
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='3' THEN a.actuser ELSE 0 END) AS actt3b3
                            , SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.actuser ELSE 0 END) AS actt3b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.actuser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.actuser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='1' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='2' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='3' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-16 00' and behavior_type='4' THEN a.actuser ELSE 0 END))END)AS actt3r1
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='1' THEN a.actuser ELSE 0 END) AS actt1b1
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='2' THEN a.actuser ELSE 0 END) AS actt1b2
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='3' THEN a.actuser ELSE 0 END) AS actt1b3
                            , SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.actuser ELSE 0 END) AS actt1b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.actuser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.actuser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='1' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='2' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='3' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-18 00' and behavior_type='4' THEN a.actuser ELSE 0 END)) END)AS actt1r1
                    FROM
                              (
                                        SELECT
                                                  item_category
                                                , behavior_type
                                                , time
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
