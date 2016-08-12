# -*- coding: utf-8 -*-
# Filename :i_feature
# Date     :2016-08-08 16:04
# Author   :zaber


import MySQLdb
from numpy import *
from Path import *
import winsound
import csv
import time
from sklearn.linear_model import LogisticRegression


def i_train():
    f = file(Path.i_feature, 'r')
    reader = csv.reader(f)
    i_all = dict()

    i_list = []
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i_all[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1), float(act2),
                          float(act3), float(act4), float(actcount), float(0)]

    for i in range(0, 23):
        f = file(Path.tb_feature_i[i], 'r')
        reader = csv.reader(f)
        i7 = dict()
        for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
            i7[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1),
                           float(act2),
                           float(act3), float(act4), float(actcount)]
        for item in i7:
            i7[item] = i7[item] + i_all[item]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT item_id from " + Path.tb_train_result[i] + " where behavior_type='4'"
        i7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                i7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for item in i7_result:
            if i7.has_key(item):
                i7[item][-1] = 1
        for item in i7:
            i_list.append(i7[item])
    return array(i_list)


def i_cross_validation():
    f = file(Path.i_feature, 'r')
    reader = csv.reader(f)
    i_all = dict()

    i_list = []
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i_all[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1), float(act2),
                          float(act3), float(act4), float(actcount), float(0)]

    for i in range(23, 24):
        f = file(Path.tb_feature_i[i], 'r')
        reader = csv.reader(f)
        i7 = dict()
        for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
            i7[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1),
                           float(act2),
                           float(act3), float(act4), float(actcount)]
        for item in i7:
            i7[item] = i7[item] + i_all[item]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT item_id from " + Path.tb_train_result[i] + " where behavior_type='4'"
        i7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                i7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for item in i7_result:
            if i7.has_key(item):
                i7[item][-1] = 1
        for item in i7:
            i_list.append(i7[item])
    return array(i_list)


def i_all_data():
    f = file(Path.i_feature, 'r')
    reader = csv.reader(f)
    i_all = dict()

    i_list = []
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i_all[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1), float(act2),
                          float(act3), float(act4), float(actcount), float(0)]

    for i in range(0, 24):
        f = file(Path.tb_feature_i[i], 'r')
        reader = csv.reader(f)
        i7 = dict()
        for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
            i7[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1),
                           float(act2),
                           float(act3), float(act4), float(actcount)]
        for item in i7:
            i7[item] = i7[item] + i_all[item]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT item_id from " + Path.tb_train_result[i] + " where behavior_type='4'"
        i7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                i7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for item in i7_result:
            if i7.has_key(item):
                i7[item][-1] = 1
        for item in i7:
            i_list.append(i7[item])
    return array(i_list)


def i_data():
    f = file(Path.i_feature, 'r')
    reader = csv.reader(f)
    i_all = dict()

    i_list = []
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i_all[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1), float(act2),
                          float(act3), float(act4), float(actcount), float(0)]

    for i in range(0, 22):
        f = file(Path.tb_feature_i[i], 'r')
        reader = csv.reader(f)
        i7 = dict()
        for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
            i7[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1),
                           float(act2),
                           float(act3), float(act4), float(actcount)]
        for item in i7:
            i7[item] = i7[item] + i_all[item]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT item_id from " + Path.tb_train_result[i] + " where behavior_type='4'"
        i7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                i7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for item in i7_result:
            if i7.has_key(item):
                i7[item][-1] = 1
        for item in i7:
            i_list.append(i7[item])
    return array(i_list)


def i_test():
    f = file(Path.i_feature, 'r')
    reader = csv.reader(f)
    i_all = dict()

    i_list = []
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i_all[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1), float(act2),
                          float(act3), float(act4), float(actcount), float(0)]

    for i in range(22, 24):
        f = file(Path.tb_feature_i[i], 'r')
        reader = csv.reader(f)
        i7 = dict()
        for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
            i7[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1),
                           float(act2),
                           float(act3), float(act4), float(actcount)]
        for item in i7:
            i7[item] = i7[item] + i_all[item]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select DISTINCT item_id from " + Path.tb_train_result[i] + " where behavior_type='4'"
        i7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                i7_result[row[0]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for item in i7_result:
            if i7.has_key(item):
                i7[item][-1] = 1
        for item in i7:
            i_list.append(i7[item])
    return array(i_list)


def i_predict():
    f = file(Path.i_feature, 'r')
    reader = csv.reader(f)
    i_all = dict()
    i_list = []
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i_all[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1), float(act2),
                          float(act3), float(act4), float(actcount)]
    f = file(Path.i_feature_test, 'r')
    reader = csv.reader(f)
    i7 = dict()
    for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
        i7[item_id] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(act1),
                       float(act2), float(act3), float(act4), float(actcount)]
    for item in i7:
        i7[item] = i7[item] + i_all[item]
    id_list = []
    for item in i7:
        id_list.append(item)
        i_list.append(i7[item])
    return array(i_list), array(id_list)


def find_parameter(train, cross_v):
    weight = linspace(21, 28, 14)
    c = linspace(1, 5, 10)
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for i in range(shape(weight)[0]):
        for j in range(shape(c)[0]):
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
    # train1 = i_train()
    # print 'train 1 mean:', mean(train1[:, -1] == 1)
    # cross_v1 = i_cross_validation()
    # print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)


    # find_parameter(train1, cross_v1)
    lr = LogisticRegression(class_weight={1: 24.2307692308}, C=1.88888888889)
    # lr.fit(train1[:, :-1], train1[:, -1])
    # predict = i_test()
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
    # print tp, fp, fn, tn
    # precision1 = tp / (tp + fp)
    # recall1 = tp / (tp + fn)
    # f1 = (precision1 * recall1) * 2 / (precision1 + recall1)
    # print 'precision:', precision1
    # print 'recall:', recall1
    # print 'F1 score:', f1
    ################################################
    # data = i_data()
    # print 'data 1 mean:', mean(data[:, -1] == 1)
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
    # print tp, fp, fn, tn
    # precision1 = tp / (tp + fp)
    # recall1 = tp / (tp + fn)
    # f1 = (precision1 * recall1) * 2 / (precision1 + recall1)
    # print 'precision:', precision1
    # print 'recall:', recall1
    # print 'F1 score:', f1
    # print 'time cost:', time.time() - start
    #####################################
    all_data = i_all_data()
    print 'all data 1 mean:', mean(all_data[:, -1] == 1)
    predict, i_id = i_predict()
    lr.fit(all_data[:, :-1], all_data[:, -1])
    z = lr.predict(predict)
    #####################################
    db = MySQLdb.connect(
        host=Path.host,
        port=3306,
        user=Path.user,
        passwd="1234",
        db="recommend"
    )
    sql = "DELETE FROM tb_i_feature_predict"
    try:
        cursor = db.cursor()
        # 执行SQL语句
        cursor.execute(sql)
        # 提交修改
        db.commit()
    except:
        # 发生错误时回滚
        print '发生错误时回滚'
        db.rollback()
    sql = "insert into tb_i_feature_predict VALUES (%s)"
    values = []
    for i in range(shape(z)[0]):
        if z[i] == 1:
            print i_id[i]
            values.append((str(i_id[i]),))
    try:
        cursor = db.cursor()
        cursor.executemany(sql, values)
        db.commit()
    except:
        print "insert error"
    db.close()
    print 'predict mean', mean(z == 1)
    print shape(z)[0]
    winsound.Beep(300, 1000)
    # 0.257433742728 24.2307692308 1.88888888889
