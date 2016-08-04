# -*- coding: utf-8 -*-
# Filename :tmp
# Date     :2016-08-02 17:28
# Author   :zaber

import csv
from Path import *
import MySQLdb
import numpy as np

# 打开数据库连接
db = MySQLdb.connect("localhost", "root", "1234", "recommend")

# 使用cursor()方法获取操作游标
cursor = db.cursor()
count = 0  # SQL 插入语句
sql = "select user_id,item_id from tb_tianchi_user " \
      "where time>='2014-12-18 00' and time<='2014-12-18 24'" \
      "group by user_id,item_id order by user_id ;"
headers = ['user_id', 'item_id']
predict_u = []
predict_i = []
try:
    # 执行SQL语句
    cursor.execute(sql)
    # 获取所有记录列表
    results = cursor.fetchall()
    for row in results:
        predict_u.append(row[0])
        predict_i.append(row[1])
except:
    # Rollback in case there is any error
    print 11
    db.rollback()  # 关闭数据库连接
#
predict = np.column_stack((predict_u, predict_i))
db.close()

with open('as.csv', 'w')as f:
    f_csv = csv.writer(f)
    f_csv.writerow(headers)
    for i in range(np.shape(predict)[0]):
        f_csv.writerow(predict[i])
