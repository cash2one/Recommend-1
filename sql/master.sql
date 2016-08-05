-- 用户活跃度 liveness_18_24_nov
DROP TABLE IF EXISTS `tb_liveness`;

CREATE TABLE tb_liveness_18_24_nov AS
          (
                    SELECT
                              user_id
                            , COUNT( * ) AS COUNT
                    FROM
                              tb_train_18_24_nov
                    GROUP BY
                              user_id
                    ORDER BY
                              COUNT DESC
          )
;

SELECT COUNT(*) FROM tb_liveness_18_24_nov ;

SELECT * FROM tb_liveness_18_24_nov limit 10 ;