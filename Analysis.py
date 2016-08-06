# -*- coding: utf-8 -*-
# Filename :Analysis

# Date     :2016-08-02 01:40
# Author   :zaber

import MySQLdb
from numpy import *

# 打开数据库连接
db = MySQLdb.connect("localhost", "root", "1234", "recommend")

# 使用cursor()方法获取操作游标
cursor = db.cursor()
count = 0  # SQL 插入语句
sql = "select user_id,c1,c2,c3,c4,count,rate from tb_u_feature "
u = {}
try:
    # 执行SQL语句
    cursor.execute(sql)
    # 获取所有记录列表
    results = cursor.fetchall()
    for row in results:
        u[row[0]]={row[1],row[2],row[3],row[4],row[5],row[6]}
except:
    # Rollback in case there is any error
    print 11
    db.rollback()  # 关闭数据库连接
#
db.close()

for key in u:
    print key