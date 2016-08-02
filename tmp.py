# -*- coding: utf-8 -*-
# Filename :tmp
# Date     :2016-08-02 17:28
# Author   :zaber

import csv
from Path import *
import MySQLdb

reader = csv.reader(open(Path.tianchi_fresh_comp_train_user))

# 打开数据库连接
db = MySQLdb.connect("localhost", "root", "1234", "recommend")

# 使用cursor()方法获取操作游标
cursor = db.cursor()
count = 0
for u, i, b, g, c, t in reader:
    # SQL 插入语句
    sql = "INSERT INTO tianchi_fresh_comp_train_user \
        VALUES ('%s', '%s', '%s','%s', '%s', '%s')" % \
          (u, i, b, g, c, t)
    try:
        # 执行sql语句
        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
    except:
        # Rollback in case there is any error
        print 11
        db.rollback()

# 关闭数据库连接
db.close()