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


def u_train():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()

    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate), float(0)]

    for i in range(0, 24):
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


def u_cross_validation():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()

    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate), float(0)]

    for i in range(23, 24):
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


def u_all_data():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()

    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate), float(0)]

    for i in range(0, 24):
        f = file(Path.tb_feature_u[i], 'r')
        reader = csv.reader(f)
        u7 = dict()
        for user_id, c1, c2, c3, c4, count, c_rate in reader:
            u7[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
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


def u_data():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()

    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate), float(0)]

    for i in range(0, 22):
        f = file(Path.tb_feature_u[i], 'r')
        reader = csv.reader(f)
        u7 = dict()
        for user_id, c1, c2, c3, c4, count, c_rate in reader:
            u7[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
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


def u_test():
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()

    u_list = []
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate), float(0)]

    for i in range(22, 24):
        f = file(Path.tb_feature_u[i], 'r')
        reader = csv.reader(f)
        u7 = dict()
        for user_id, c1, c2, c3, c4, count, c_rate in reader:
            u7[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
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
    f = file(Path.u_feature_test, 'r')
    reader = csv.reader(f)
    u7 = dict()
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u7[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
    for user in u7:
        u7[user] = u7[user] + u_all[user]
    id_list = []
    for user in u7:
        id_list.append(user)
        u_list.append(u7[user])
    return array(u_list), array(id_list)


def find_parameter(train, cross_v):
    weight = linspace(2, 10, 30)
    c = linspace(4, 30, 50)
    # 0.406543125143 5.58620689655 19.9183673469
    # 0.406339726657 5.58620689655 11.9591836735
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for j in range(shape(c)[0]):
        for i in range(shape(weight)[0]):
            p = LogisticRegression(class_weight={1: weight[i]}, C=c[j])
            p.fit(train[:, :-1], train[:, -1])
            Z = p.predict(cross_v[:, :-1])
            TP = 0.0
            FP = 0.0
            FN = 0.0
            TN = 0.0
            for k in range(shape(Z)[0]):
                if Z[k] == 1 and cross_v[k, -1] == 1:
                    TP += 1
                elif Z[k] == 1 and cross_v[k, -1] == 0:
                    FP += 1
                elif Z[k] == 0 and cross_v[k, -1] == 1:
                    FN += 1
                else:
                    TN += 1
            print weight[i], c[j], TP, FP, FN, TN
            precision = TP / (TP + FP)
            recall = TP / (TP + FN)
            F1 = (precision * recall) * 2 / (precision + recall)
            print 'precision:', precision
            print 'recall:', recall
            print 'F1 score:', F1
            if max_F1 < F1:
                max_F1 = F1
                max_w = weight[i]
                max_c = c[j]
                print '\033[1;31;m'
                print max_F1, max_w, max_c
                print '\033[0m'
    print max_F1, max_w, max_c


if __name__ == '__main__':
    start = time.time()
    train1 = u_train()
    print 'train 1 mean:', mean(train1[:, -1] == 1)
    cross_v1 = u_cross_validation()
    print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)
    # data = u_data()
    # print 'data 1 mean:', mean(data[:, -1] == 1)
    # all_data = u_all_data()
    # print 'all data 1 mean:', mean(all_data[:, -1] == 1)
    find_parameter(train1, cross_v1)
    # lr = LogisticRegression(class_weight={1: 6.31034482759}, C=5.34482758621)
    # lr.fit(train1[:, :-1], train1[:, -1])
    # predict = u_test()
    # z = lr.predict(predict[:, :-1])
    # tp = 0.0
    # fp = 0.0
    # fn = 0.0
    # tn = 0.0
    # for k in range(shape(z)[0]):
    #     if z[k] == 1 and predict[k, -1] == 1:
    #         tp += 1
    #     elif z[k] == 1 and predict[k, -1] == 0:
    #         fp += 1
    #     elif z[k] == 0 and predict[k, -1] == 1:
    #         fn += 1
    #     else:
    #         tn += 1
    # print  tp, fp, fn, tn
    # precision1 = tp / (tp + fp)
    # recall1 = tp / (tp + fn)
    # f1 = (precision1 * recall1) * 2 / (precision1 + recall1)
    # print 'precision:', precision1
    # print 'recall:', recall1
    # print 'F1 score:', f1
    ################################################
    # lr.fit(data[:, :-1], data[:, -1])
    # z = lr.predict(predict[:, :-1])
    # tp = 0.0
    # fp = 0.0
    # fn = 0.0
    # tn = 0.0
    # for k in range(shape(z)[0]):
    #     if z[k] == 1 and predict[k, -1] == 1:
    #         tp += 1
    #     elif z[k] == 1 and predict[k, -1] == 0:
    #         fp += 1
    #     elif z[k] == 0 and predict[k, -1] == 1:
    #         fn += 1
    #     else:
    #         tn += 1
    # print  tp, fp, fn, tn
    # precision1 = tp / (tp + fp)
    # recall1 = tp / (tp + fn)
    # f1 = (precision1 * recall1) * 2 / (precision1 + recall1)
    # print 'precision:', precision1
    # print 'recall:', recall1
    # print 'F1 score:', f1
    # print 'time cost:', time.time() - start
    # #####################################
    # predict, u_id = u_predict()
    # lr.fit(all_data[:, :-1], all_data[:, -1])
    # z = lr.predict(predict)
    # #####################################
    # db = MySQLdb.connect(
    #     host=Path.host,
    #     port=3306,
    #     user=Path.user,
    #     passwd="1234",
    #     db="recommend"
    # )
    # sql = "DELETE FROM tb_u_feature_predict"
    # try:
    #     cursor = db.cursor()
    #     # 执行SQL语句
    #     cursor.execute(sql)
    #     # 提交修改
    #     db.commit()
    # except:
    #     # 发生错误时回滚
    #     print '发生错误时回滚'
    #     db.rollback()
    # sql = "insert into tb_u_feature_predict VALUES (%s)"
    # values = []
    # for i in range(shape(z)[0]):
    #     if z[i] == 1:
    #         print  u_id[i]
    #         values.append((str(u_id[i]),))
    # try:
    #     cursor = db.cursor()
    #     cursor.executemany(sql, values)
    #     db.commit()
    # except:
    #     print "insert error"
    # db.close()
    # print 'predict mean', mean(z == 1)
    # print shape(z)[0]
    winsound.Beep(300, 1000)
    # 0.447880917924 6.38775510204 4.42857142857
    # 0.404652095448 6.31034482759 5.34482758621
    # 0.40624656329 5.83333333333 19.6551724138
