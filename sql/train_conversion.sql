USE recommend;
-- train 11-17待预测ui商品对数量:54w
SELECT
          COUNT(a.item_id)
FROM
          (
                    SELECT
                              user_id
                            , item_id
                    FROM
                              tb_train_11_17
                    GROUP BY
                              user_id
                            , item_id
                    ORDER BY
                              user_id )AS a
;

-- train 11-17 7 day users which showed in 8th day numbers 17186 2992 2885
SELECT
          COUNT(a.user_id)
FROM
          ( SELECT DISTINCT user_id FROM tb_train_11_17 )AS a
;

SELECT COUNT(DISTINCT user_id) FROM tb_train_11_17_result;

SELECT
          COUNT(a.user_id)
FROM
          ( SELECT DISTINCT user_id FROM tb_train_11_17 )AS a
WHERE
          a.user_id IN
                        ( SELECT DISTINCT user_id FROM tb_train_11_17_result )
;

-- train 11-17 7 day item which showed in 8th day numbers 438080 5850 2520
SELECT
          COUNT(DISTINCT item_id )
FROM
          tb_train_11_17
;

SELECT COUNT(DISTINCT item_id ) FROM tb_train_11_17_result;

SELECT
          COUNT(a.item_id )
FROM
          ( SELECT DISTINCT item_id FROM tb_train_11_17 )AS a
WHERE
          a.item_id IN
                        ( SELECT DISTINCT item_id FROM tb_train_11_17_result )
;

-- train 11-17 7 day item_category  which showed in 8th day numbers 6426 1587 1556
SELECT
          COUNT(DISTINCT item_category )
FROM
          tb_train_11_17
;

SELECT COUNT(DISTINCT item_category ) FROM tb_train_11_17_result;

SELECT
          COUNT(a.item_category )
FROM
          ( SELECT DISTINCT item_category FROM tb_train_11_17 )AS a
WHERE
          a.item_category IN
                              ( SELECT DISTINCT item_category FROM tb_train_11_17_result )
;
