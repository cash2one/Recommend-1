# -*- coding: utf-8 -*-
# Filename :u_feature
# Date     :2016-08-08 16:04
# Author   :zaber

import MySQLdb
from numpy import *
from Path import *
import winsound
import csv
import time
from sklearn.linear_model import LogisticRegression


def u_all_data():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()

    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate), float(0)]

    for i in range(0, 23):
        f = file(Path.tb_feature_u[i], 'r')
        reader = csv.reader(f)
        u7 = dict()
        for user_id, t7g1, t3g1, t1g1, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1 in reader:
            u7[user_id] = [float(t7b1), float(t7b2), float(t7b3), float(t7b4), float(t7r1),
                           float(t3b1), float(t3b2), float(t3b3), float(t3b4), float(t3r1),
                           float(t1b1), float(t1b2), float(t1b3), float(t1b4), float(t1r1),
                           float(t7g1), float(t3g1), float(t1g1)
                           ]
        for user in u7:
            u7[user] = u7[user] + u_all[user]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT user_id from " + Path.tb_train_result[i] + " where behavior_type='4'"
        u7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                u7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for user in u7_result:
            if u7.has_key(user):
                u7[user][-1] = 1
        for user in u7:
            u_list.append(u7[user])
    return array(u_list)


def u_predict():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()
    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
    f = file(Path.tb_feature_u[23], 'r')
    reader = csv.reader(f)
    u7 = dict()
    for user_id, t7g1, t3g1, t1g1, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1 in reader:
        u7[user_id] = [float(t7b1), float(t7b2), float(t7b3), float(t7b4), float(t7r1),
                       float(t3b1), float(t3b2), float(t3b3), float(t3b4), float(t3r1),
                       float(t1b1), float(t1b2), float(t1b3), float(t1b4), float(t1r1),
                       float(t7g1), float(t3g1), float(t1g1)]
    for user in u7:
        u7[user] = u7[user] + u_all[user]
    id_list = []
    for user in u7:
        id_list.append(user)
        u_list.append(u7[user])
    return array(u_list), array(id_list)


def c_all_data():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()
    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    for i in range(0, 23):
        f = file(Path.tb_feature_c[i], 'r')
        reader = csv.reader(f)
        c7 = dict()
        for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            c7[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount),
                                 float(allturnrate),
                                 float(act1), float(act2), float(act3), float(act4), float(actcount),
                                 float(actturnrate)]
        for category in c7:
            c7[category] = c7[category] + c_all[category]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT item_category from " + Path.tb_train_result[i] + " where behavior_type='4'"
        c7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                c7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for category in c7_result:
            if c7.has_key(category):
                c7[category][-1] = 1
        for category in c7:
            c_list.append(c7[category])
    return array(c_list)


def c_predict():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()

    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    f = file(Path.tb_feature_c[23], 'r')
    reader = csv.reader(f)
    c7 = dict()
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c7[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                             float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate)]
    for category in c7:
        c7[category] = c7[category] + c_all[category]
    category_list = []
    for category in c7:
        category_list.append(category)
        c_list.append(c7[category])
    return array(c_list), array(category_list)


def uc_data():
    f = file(Path.tb_feature_uc[23], 'r')
    reader = csv.reader(f)
    uc7 = []
    for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        uc7.append([user_id, item_category])
    return array(uc7)


if __name__ == '__main__':
    start = time.time()
    ########################
    all_data = u_all_data()
    print 'u all data 1 mean:', mean(all_data[:, -1] == 1)
    lr = LogisticRegression(class_weight={1: 5.58620689655}, C=11.9591836735)
    predict, u_id = u_predict()
    lr.fit(all_data[:, :-1], all_data[:, -1])
    u_pre = lr.predict(predict)
    print 'predict mean', mean(u_pre == 1)
    print shape(u_pre)[0]
    #######################
    all_data = c_all_data()
    print 'c all data 1 mean:', mean(all_data[:, -1] == 1)
    lr = LogisticRegression(class_weight={1: 3.41379310345}, C=13.0689655172)
    predict, c_id = c_predict()
    lr.fit(all_data[:, :-1], all_data[:, -1])
    c_pre = lr.predict(predict[:, :-1])
    print 'predict mean', mean(c_pre == 1)
    print shape(c_pre)[0]
    #######################
    all_data = uc_data()
    u_predict = dict()
    c_predict = dict()
    for i in range(shape(u_pre)[0]):
        if u_pre[i] == 1:
            u_predict[u_pre[i]] = 1
    for i in range(shape(c_pre)[0]):
        if c_pre[i] == 1:
            c_predict[c_pre[i]] = 1
    uc_predict=[]
    for i in range(shape(all_data)[0]):
        if u_predict.has_key(all_data[i][0]):
            if c_predict.has_key(all_data[i][1]):
                c_predict[all_data[i][1]] += 1
                u_predict[all_data[i][0]] += 1
                uc_predict.append([all_data[i][0],all_data[i][1]])
    winsound.Beep(300, 1000)
