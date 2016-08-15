CREATE TABLE tb_uc_feature_18_24_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_18_24_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_18_24_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_18_24_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_19_25_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_19_25_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_19_25_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_19_25_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_20_26_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_20_26_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_20_26_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_20_26_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_21_27_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_21_27_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_21_27_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_21_27_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_22_28_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_22_28_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_22_28_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_22_28_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_23_29_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_23_29_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_23_29_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_23_29_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_24_30_nov AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_24_30_nov
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_24_30_nov)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_24_30_nov)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_25_01_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_25_01_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_25_01_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_25_01_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_26_02_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_26_02_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_26_02_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_26_02_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_27_03_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_27_03_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_27_03_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_27_03_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_28_04_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_28_04_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_28_04_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_28_04_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_29_05_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_29_05_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_29_05_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_29_05_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_30_06_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_30_06_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_30_06_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_30_06_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_01_07_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_01_07_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_01_07_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_01_07_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_02_08_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_02_08_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_02_08_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_02_08_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_03_09_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_03_09_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_03_09_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_03_09_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_04_10_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_04_10_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_04_10_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_04_10_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_05_11_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_05_11_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_05_11_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_05_11_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_06_12_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_06_12_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_06_12_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_06_12_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_07_13_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_07_13_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_07_13_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_07_13_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_08_14_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_08_14_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_08_14_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_08_14_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_09_15_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_09_15_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_09_15_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_09_15_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_10_16_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_10_16_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_10_16_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_10_16_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;
CREATE TABLE tb_uc_feature_11_17_dec AS
          (
                    SELECT
                              a.user_id
                            , a.item_category
                            , u.c1
                            , u.c2
                            , u.c3
                            , u.c4
                            , u.count
                            , u.rate
                            , c.call1
                            , c.call2
                            , c.call3
                            , c.call4
                            , c.callc
                            , c.callr
                            , c.cact1
                            , c.cact2
                            , c.cact3
                            , c.cact4
                            , c.cactc
                            , c.cactr
                    FROM
                              (
                                        SELECT
                                                  user_id
                                                , item_category
                                        FROM
                                                  tb_train_11_17_dec
                                        GROUP BY
                                                  user_id
                                                , item_category) a
                            , (
                                        SELECT
                                                  item_category
                                                , all1        AS call1
                                                , all2        AS call2
                                                , all3        AS call3
                                                , all4        AS call4
                                                , allcount    AS callc
                                                , allturnrate    callr
                                                , act1        AS cact1
                                                , act2        AS cact2
                                                , act3        AS cact3
                                                , act4        AS cact4
                                                , actcount    AS cactc
                                                , actturnrate AS cactr
                                        FROM
                                                  tb_c_feature_11_17_dec)                               c
                            , (SELECT user_id, c1, c2, c3, c4 , COUNT, rate FROM tb_u_feature_11_17_dec)u
                    WHERE
                              a.user_id          =u.user_id
                              AND a.item_category=c.item_category
          )
;