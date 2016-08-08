# -*- coding: utf-8 -*-
# Filename :ToCSV
# Date     :2016-08-08 21:45
# Author   :zaber

import MySQLdb
from numpy import *
import csv

db = MySQLdb.connect("172.27.35.2", "zaber", "1234", "recommend")


f = open('u_feature_predict.txt')
headers = ['user_id', 'item_id']
predict_u = []
predict_i = []
for line in f:
    cursor = db.cursor()
    data = line.strip()
    print data
    sql = "select user_id,item_id from tb_test where user_id=" + str(data)  # 执行SQL语句
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        predict_u.append(row[0])
        predict_i.append(row[1])


predict = column_stack((predict_u, predict_i))
db.close()

with open('88.csv', 'w')as f:
    f_csv = csv.writer(f)
    f_csv.writerow(headers)
    for i in range(shape(predict)[0]):
        f_csv.writerow(predict[i])
