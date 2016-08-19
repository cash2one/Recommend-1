                    SELECT
                              a.user_id
                            , a.item_category
                            , SUM( CASE WHEN a.behavior_type  ='1' THEN a.sumb ELSE 0 END)                                                                                                                                                                                                                                                   AS t7b1
                            , SUM( CASE WHEN a.behavior_type  ='2' THEN a.sumb ELSE 0 END)                                                                                                                                                                                                                                                   AS t7b2
                            , SUM( CASE WHEN a.behavior_type  ='3' THEN a.sumb ELSE 0 END)                                                                                                                                                                                                                                                   AS t7b3
                            , SUM( CASE WHEN a.behavior_type  ='4' THEN a.sumb ELSE 0 END)                                                                                                                                                                                                                                                   AS t7b4
                            , SUM( CASE WHEN a.behavior_type  ='4' THEN a.sumb ELSE 0 END)/ ( SUM( CASE WHEN a.behavior_type='1' THEN a.sumb ELSE 0 END)+ SUM( CASE WHEN a.behavior_type='2' THEN a.sumb ELSE 0 END)+ SUM( CASE WHEN a.behavior_type='3' THEN a.sumb ELSE 0 END)+ SUM( CASE WHEN a.behavior_type='4' THEN a.sumb ELSE 0 END))AS t7r1
                            , ( CASE WHEN b.user_id IS NOT NULL AND b.item_category IS NOT NULL THEN 1 ELSE 0 END)                                                                                                                                                                                                                           AS res
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                                , behavior_type
                                                , COUNT(behavior_type) AS sumb
                                        FROM
                                                  tb_train_18_24_nov
                                        GROUP BY
                                                  user_id
                                                , item_category
                                                , behavior_type) AS a
                              LEFT JOIN
                                        (
                                                  SELECT
                                                            user_id
                                                          , item_category
                                                  FROM
                                                            tb_train_18_24_nov_result
                                                  WHERE
                                                            behavior_type='4'
                                                  GROUP BY
                                                            user_id
                                                          , item_category) AS b
                              ON
                                        b.user_id          =a.user_id
                                        AND b.item_category=a.item_category
                    GROUP BY
                              user_id
                            , item_category