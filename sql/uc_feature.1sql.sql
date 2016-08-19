-- u_feature_18_24_nov
DROP TABLE IF EXISTS `tb_uc_feature_18_24_nov`;

CREATE TABLE tb_uc_feature_18_24_nov AS
          (
                    SELECT
                              user_id
                            , item_category
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
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_18_24_nov ;

-- SELECT * FROM tb_uc_feature_18_24_nov limit 10 ;
-- u_feature_19_25_nov
DROP TABLE IF EXISTS `tb_uc_feature_19_25_nov`;

CREATE TABLE tb_uc_feature_19_25_nov AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-23 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-25 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-23 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-23 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_19_25_nov
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_19_25_nov ;

-- SELECT * FROM tb_uc_feature_19_25_nov limit 10 ;
-- u_feature_20_26_nov
DROP TABLE IF EXISTS `tb_uc_feature_20_26_nov`;

CREATE TABLE tb_uc_feature_20_26_nov AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-24 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-26 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-24 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_20_26_nov
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_20_26_nov ;

-- SELECT * FROM tb_uc_feature_20_26_nov limit 10 ;
-- u_feature_21_27_nov
DROP TABLE IF EXISTS `tb_uc_feature_21_27_nov`;

CREATE TABLE tb_uc_feature_21_27_nov AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-25 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-27 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-25 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_21_27_nov
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_21_27_nov ;

-- SELECT * FROM tb_uc_feature_21_27_nov limit 10 ;
-- u_feature_22_28_nov
DROP TABLE IF EXISTS `tb_uc_feature_22_28_nov`;

CREATE TABLE tb_uc_feature_22_28_nov AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-26 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-28 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-26 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_22_28_nov
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_22_28_nov ;

-- SELECT * FROM tb_uc_feature_22_28_nov limit 10 ;
-- u_feature_23_29_nov
DROP TABLE IF EXISTS `tb_uc_feature_23_29_nov`;

CREATE TABLE tb_uc_feature_23_29_nov AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-27 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-29 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-27 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_23_29_nov
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_23_29_nov ;

-- SELECT * FROM tb_uc_feature_23_29_nov limit 10 ;
-- u_feature_24_30_nov
DROP TABLE IF EXISTS `tb_uc_feature_24_30_nov`;

CREATE TABLE tb_uc_feature_24_30_nov AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-28 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-11-30 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-28 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_24_30_nov
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_24_30_nov ;

-- SELECT * FROM tb_uc_feature_24_30_nov limit 10 ;
-- u_feature_25_01_dec
DROP TABLE IF EXISTS `tb_uc_feature_25_01_dec`;

CREATE TABLE tb_uc_feature_25_01_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-29 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-01 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-29 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_25_01_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_25_01_dec ;

-- SELECT * FROM tb_uc_feature_25_01_dec limit 10 ;
-- u_feature_26_02_dec
DROP TABLE IF EXISTS `tb_uc_feature_26_02_dec`;

CREATE TABLE tb_uc_feature_26_02_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-11-30 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-02 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-11-30 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_26_02_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_26_02_dec ;

-- SELECT * FROM tb_uc_feature_26_02_dec limit 10 ;
-- u_feature_27_03_dec
DROP TABLE IF EXISTS `tb_uc_feature_27_03_dec`;

CREATE TABLE tb_uc_feature_27_03_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-01 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-03 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-01 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_27_03_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_27_03_dec ;

-- SELECT * FROM tb_uc_feature_27_03_dec limit 10 ;
-- u_feature_28_04_dec
DROP TABLE IF EXISTS `tb_uc_feature_28_04_dec`;

CREATE TABLE tb_uc_feature_28_04_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-02 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-04 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-02 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_28_04_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_28_04_dec ;

-- SELECT * FROM tb_uc_feature_28_04_dec limit 10 ;
-- u_feature_29_05_dec
DROP TABLE IF EXISTS `tb_uc_feature_29_05_dec`;

CREATE TABLE tb_uc_feature_29_05_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-03 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-05 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-03 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_29_05_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_29_05_dec ;

-- SELECT * FROM tb_uc_feature_29_05_dec limit 10 ;
-- u_feature_30_06_dec
DROP TABLE IF EXISTS `tb_uc_feature_30_06_dec`;

CREATE TABLE tb_uc_feature_30_06_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-04 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-06 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-04 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_30_06_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_30_06_dec ;

-- SELECT * FROM tb_uc_feature_30_06_dec limit 10 ;
-- u_feature_01_07_dec
DROP TABLE IF EXISTS `tb_uc_feature_01_07_dec`;

CREATE TABLE tb_uc_feature_01_07_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-05 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-07 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-05 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_01_07_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_01_07_dec ;

-- SELECT * FROM tb_uc_feature_01_07_dec limit 10 ;
-- u_feature_02_08_dec
DROP TABLE IF EXISTS `tb_uc_feature_02_08_dec`;

CREATE TABLE tb_uc_feature_02_08_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-06 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-08 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-06 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_02_08_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_02_08_dec ;

-- SELECT * FROM tb_uc_feature_02_08_dec limit 10 ;
-- u_feature_03_09_dec
DROP TABLE IF EXISTS `tb_uc_feature_03_09_dec`;

CREATE TABLE tb_uc_feature_03_09_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-07 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-09 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-07 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_03_09_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_03_09_dec ;

-- SELECT * FROM tb_uc_feature_03_09_dec limit 10 ;
-- u_feature_04_10_dec
DROP TABLE IF EXISTS `tb_uc_feature_04_10_dec`;

CREATE TABLE tb_uc_feature_04_10_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-08 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-10 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-08 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_04_10_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_04_10_dec ;

-- SELECT * FROM tb_uc_feature_04_10_dec limit 10 ;
-- u_feature_05_11_dec
DROP TABLE IF EXISTS `tb_uc_feature_05_11_dec`;

CREATE TABLE tb_uc_feature_05_11_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-09 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-11 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-09 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_05_11_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_05_11_dec ;

-- SELECT * FROM tb_uc_feature_05_11_dec limit 10 ;
-- u_feature_06_12_dec
DROP TABLE IF EXISTS `tb_uc_feature_06_12_dec`;

CREATE TABLE tb_uc_feature_06_12_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-10 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-12 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-10 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_06_12_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_06_12_dec ;

-- SELECT * FROM tb_uc_feature_06_12_dec limit 10 ;
-- u_feature_07_13_dec
DROP TABLE IF EXISTS `tb_uc_feature_07_13_dec`;

CREATE TABLE tb_uc_feature_07_13_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-11 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-13 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-11 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_07_13_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_07_13_dec ;

-- SELECT * FROM tb_uc_feature_07_13_dec limit 10 ;
-- u_feature_08_14_dec
DROP TABLE IF EXISTS `tb_uc_feature_08_14_dec`;

CREATE TABLE tb_uc_feature_08_14_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-12 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-14 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-12 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_08_14_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_08_14_dec ;

-- SELECT * FROM tb_uc_feature_08_14_dec limit 10 ;
-- u_feature_09_15_dec
DROP TABLE IF EXISTS `tb_uc_feature_09_15_dec`;

CREATE TABLE tb_uc_feature_09_15_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-13 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-15 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-13 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_09_15_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_09_15_dec ;

-- SELECT * FROM tb_uc_feature_09_15_dec limit 10 ;
-- u_feature_10_16_dec
DROP TABLE IF EXISTS `tb_uc_feature_10_16_dec`;

CREATE TABLE tb_uc_feature_10_16_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-14 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-16 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-14 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-16 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_10_16_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_10_16_dec ;

-- SELECT * FROM tb_uc_feature_10_16_dec limit 10 ;
-- u_feature_11_17_dec
DROP TABLE IF EXISTS `tb_uc_feature_11_17_dec`;

CREATE TABLE tb_uc_feature_11_17_dec AS
          (
                    SELECT
                              user_id
                            , item_category
                            , SUM( CASE WHEN user_geohash!= "" THEN 1 ELSE 0 END) AS t7g1
                            , SUM( CASE WHEN time >='2014-12-15 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t3g1
                            , SUM( CASE WHEN time >='2014-12-17 00' and user_geohash!= "" THEN 1 ELSE 0 END) AS t1g1
                            , SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END) AS t7b1
                            , SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END) AS t7b2
                            , SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END) AS t7b3
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END) AS t7b4
                            , SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN behavior_type='4' THEN 1 ELSE 0 END))AS t7r1
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t3b1
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t3b2
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t3b3
                            , SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t3b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-15 00' and behavior_type='4' THEN 1 ELSE 0 END))END)AS t3r1
                            , SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='1' THEN 1 ELSE 0 END) AS t1b1
                            , SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='2' THEN 1 ELSE 0 END) AS t1b2
                            , SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='3' THEN 1 ELSE 0 END) AS t1b3
                            , SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='4' THEN 1 ELSE 0 END) AS t1b4
                            , (CASE WHEN SUM(CASE WHEN time >='2014-12-17 00' and behavior_type='4' THEN 1 ELSE 0 END)=0 THEN 0 ELSE
                              SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='4' THEN 1 ELSE 0 END)/
                            ( SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='1' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='2' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='3' THEN 1 ELSE 0 END)+ 
                              SUM( CASE WHEN time >='2014-12-17 00' and behavior_type='4' THEN 1 ELSE 0 END)) END)AS t1r1
                    FROM
                              tb_train_11_17_dec
                    GROUP BY
                              user_id
                            , item_category
          )
;

-- SELECT COUNT(*) FROM tb_uc_feature_11_17_dec ;

-- SELECT * FROM tb_uc_feature_11_17_dec limit 10 ;