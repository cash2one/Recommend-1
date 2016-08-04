# -*- coding: utf-8 -*-
# Filename :Analysis

# Date     :2016-08-02 01:40
# Author   :zaber
import MySQLdb
from Path import *
from collections import Counter
import csv
from numpy import *


def test():
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


def count():
    reader = csv.reader(open(Path.tianchi_fresh_comp_train_item))
    item_id = []
    item_geo = []
    category = []
    id_cat = {}
    for item, geohash, cat in reader:
        item_id.append(item)
        item_geo.append(geohash)
        category.append(cat)
        id_cat[item] = cat
    item_id = set(item_id)
    item_geo = set(item_geo)
    category = set(category)
    count_cat = Counter(category)
    count_cat = sorted(count_cat.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
    print '商品数量特征：', len(item_id)
    print '商品地理数量：', len(item_geo)
    print '商品类别数量：', len(category)
    print '每个类别的数量：'
    for i in count_cat[:10]:
        print i

    user = {}
    item = []
    behave = []
    user_geo = []
    category = []
    reader = csv.reader(open(Path.tianchi_fresh_comp_train_user))
    j = 0
    for u, i, b, g, c, t in reader:
        j += 1
        if user.has_key(u):
            user[u] += 1
        else:
            user[u] = 1
            item.append(i)
            behave.append(b)
            user_geo.append(g)
            category.append(c)
    print shape(user)

def test_predict_10_18():
    db = MySQLdb.connect("localhost", "root", "1234", "recommend")

    # 使用cursor()方法获取操作游标
    cursor = db.cursor()
    count = 0  # SQL 插入语句
    sql = "select user_id,item_id from tb_test_predict where time >='2014-12-15' group by user_id,item_id order by user_id"
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
    cursor = db.cursor()
    # SQL 插入语句
    sql = "select user_id,item_id from tb_test_result group by user_id,item_id order by user_id"
    result_u = []
    result_i = []
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        results = cursor.fetchall()
        for row in results:
            result_u.append(row[0])
            result_i.append(row[1])
    except:
        # Rollback in case there is any error
        print 11
        db.rollback()  # 关闭数据库连接
    db.close()

    print shape(predict_u)
    print shape(result_u)
    for i in range(shape(predict_u)[0]):
        for j in range(shape(result_u)[0]):
            if predict_u[i] == result_u[j] and predict_i[i] == result_i[j]:
                count += 1
    print count
    print count / shape(result_u)[0]
