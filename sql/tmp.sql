


          (
                    SELECT
                              a.item_category
                            , SUM( CASE WHEN a.behavior_type='1' THEN a.alluser ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN a.behavior_type='2' THEN a.alluser ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN a.behavior_type='3' THEN a.alluser ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN a.behavior_type='4' THEN a.alluser ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN a.behavior_type='4' THEN a.alluser ELSE 0 END)/
                            ( SUM( CASE WHEN a.behavior_type='1' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.behavior_type='2' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.behavior_type='3' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.behavior_type='4' THEN a.alluser ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='1' THEN a.alluser ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='2' THEN a.alluser ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='3' THEN a.alluser ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='1' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='2' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='3' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='1' THEN a.alluser ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='2' THEN a.alluser ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='3' THEN a.alluser ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='1' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='2' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='3' THEN a.alluser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.alluser ELSE 0 END)) END)AS t1r1
                            , SUM( CASE WHEN a.behavior_type='1' THEN a.actuser ELSE 0 END) AS actt7b1
                            , SUM( CASE WHEN a.behavior_type='2' THEN a.actuser ELSE 0 END) AS actt7b2
                            , SUM( CASE WHEN a.behavior_type='3' THEN a.actuser ELSE 0 END) AS actt7b3
                            , SUM( CASE WHEN a.behavior_type='4' THEN a.actuser ELSE 0 END) AS actt7b4
                            , SUM( CASE WHEN a.behavior_type='4' THEN a.actuser ELSE 0 END)/
                            ( SUM( CASE WHEN a.behavior_type='1' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.behavior_type='2' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.behavior_type='3' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.behavior_type='4' THEN a.actuser ELSE 0 END))AS actt7r1
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='1' THEN a.actuser ELSE 0 END) AS actt3b1
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='2' THEN a.actuser ELSE 0 END) AS actt3b2
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='3' THEN a.actuser ELSE 0 END) AS actt3b3
                            , SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END) AS actt3b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='1' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='2' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='3' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-15 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END))END)AS actt3r1
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='1' THEN a.actuser ELSE 0 END) AS actt1b1
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='2' THEN a.actuser ELSE 0 END) AS actt1b2
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='3' THEN a.actuser ELSE 0 END) AS actt1b3
                            , SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END) AS actt1b4
                            , (CASE WHEN SUM(CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END)/
                            ( SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='1' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='2' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='3' THEN a.actuser ELSE 0 END)+ 
                              SUM( CASE WHEN a.time >='2014-12-17 00' and a.behavior_type='4' THEN a.actuser ELSE 0 END)) END)AS actt1r1
                    FROM
                              (
                                        SELECT
                                                  item_category
                                                , behavior_type
                                                , time
                                                , COUNT(user_id)         AS alluser
                                                , COUNT(DISTINCT user_id)AS actuser
                                        FROM
                                                  tb_train_11_17_dec
                                        GROUP BY
                                                  item_category
                                                , behavior_type) AS a
                    GROUP BY
                              a.item_category
          )
;

-- SELECT COUNT(*) FROM tb_c_feature_11_17_dec ;
-- SELECT * FROM Ftb_c_feature_11_17_dec limit 10 ;
                              
select * from tb_c_feature_11_17_dec;