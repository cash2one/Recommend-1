                    SELECT
                              user_id
							, SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-22 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-24 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-22 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-22 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_18_24_nov
                    GROUP BY
                              user_id