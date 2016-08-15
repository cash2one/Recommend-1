CREATE TABLE `tb_uc_feature` (
  `user_id` char(20) DEFAULT NULL,
  `item_category` char(20) DEFAULT NULL,
  `t7b1` decimal(42,0) DEFAULT NULL,
  `t7b2` decimal(42,0) DEFAULT NULL,
  `t7b3` decimal(42,0) DEFAULT NULL,
  `t7b4` decimal(42,0) DEFAULT NULL,
  `t7r1` decimal(46,4) DEFAULT NULL,
  `res` int(0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

;


insert into tb_uc_feature select * from  `tb_uc_feature_18_24_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_19_25_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_20_26_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_21_27_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_22_28_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_23_29_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_24_30_nov`;

insert into tb_uc_feature select * from  `tb_uc_feature_25_01_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_26_02_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_27_03_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_28_04_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_29_05_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_30_06_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_01_07_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_02_08_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_03_09_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_04_10_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_05_11_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_06_12_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_07_13_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_08_14_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_09_15_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_10_16_dec`;

insert into tb_uc_feature select * from  `tb_uc_feature_11_17_dec`;


CREATE TABLE tb_uc_feature_18_24_nov AS
          (
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
          )
;

CREATE TABLE tb_uc_feature_19_25_nov AS
          (
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
                                                  tb_train_19_25_nov
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
                                                            tb_train_19_25_nov_result
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
          )
;

CREATE TABLE tb_uc_feature_20_26_nov AS
          (
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
                                                  tb_train_20_26_nov
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
                                                            tb_train_20_26_nov_result
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
          )
;

CREATE TABLE tb_uc_feature_21_27_nov AS
          (
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
                                                  tb_train_21_27_nov
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
                                                            tb_train_21_27_nov_result
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
          )
;

CREATE TABLE tb_uc_feature_22_28_nov AS
          (
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
                                                  tb_train_22_28_nov
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
                                                            tb_train_22_28_nov_result
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
          )
;

CREATE TABLE tb_uc_feature_23_29_nov AS
          (
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
                                                  tb_train_23_29_nov
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
                                                            tb_train_23_29_nov_result
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
          )
;

CREATE TABLE tb_uc_feature_24_30_nov AS
          (
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
                                                  tb_train_24_30_nov
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
                                                            tb_train_24_30_nov_result
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
          )
;

CREATE TABLE tb_uc_feature_25_01_dec AS
          (
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
                                                  tb_train_25_01_dec
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
                                                            tb_train_25_01_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_26_02_dec AS
          (
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
                                                  tb_train_26_02_dec
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
                                                            tb_train_26_02_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_27_03_dec AS
          (
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
                                                  tb_train_27_03_dec
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
                                                            tb_train_27_03_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_28_04_dec AS
          (
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
                                                  tb_train_28_04_dec
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
                                                            tb_train_28_04_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_29_05_dec AS
          (
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
                                                  tb_train_29_05_dec
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
                                                            tb_train_29_05_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_30_06_dec AS
          (
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
                                                  tb_train_30_06_dec
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
                                                            tb_train_30_06_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_01_07_dec AS
          (
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
                                                  tb_train_01_07_dec
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
                                                            tb_train_01_07_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_02_08_dec AS
          (
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
                                                  tb_train_02_08_dec
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
                                                            tb_train_02_08_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_03_09_dec AS
          (
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
                                                  tb_train_03_09_dec
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
                                                            tb_train_03_09_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_04_10_dec AS
          (
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
                                                  tb_train_04_10_dec
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
                                                            tb_train_04_10_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_05_11_dec AS
          (
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
                                                  tb_train_05_11_dec
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
                                                            tb_train_05_11_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_06_12_dec AS
          (
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
                                                  tb_train_06_12_dec
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
                                                            tb_train_06_12_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_07_13_dec AS
          (
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
                                                  tb_train_07_13_dec
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
                                                            tb_train_07_13_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_08_14_dec AS
          (
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
                                                  tb_train_08_14_dec
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
                                                            tb_train_08_14_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_09_15_dec AS
          (
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
                                                  tb_train_09_15_dec
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
                                                            tb_train_09_15_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_10_16_dec AS
          (
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
                                                  tb_train_10_16_dec
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
                                                            tb_train_10_16_dec_result
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
          )
;

CREATE TABLE tb_uc_feature_11_17_dec AS
          (
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
                                                  tb_train_11_17_dec
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
                                                            tb_train_11_17_dec_result
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
          )
;
