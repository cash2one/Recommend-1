# -*- coding: utf-8 -*-
# Filename :Analysis
# Date     :2016-08-02 01:40
# Author   :zaber
import MySQLdb

db = MySQLdb.connect("localhost", "root", "1234", "recommend")
sql = "select count(*) from tb_tianchi_user"
# 使用cursor()方法获取操作游标
cursor = db.cursor()
try:
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        print row[0]
except:
    print "Error: unable to fecth data"

db.close()
