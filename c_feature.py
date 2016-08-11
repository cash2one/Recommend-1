# -*- coding: utf-8 -*-
# Filename :c_feature
# Date     :2016-08-11 10:38
# Author   :zaber



import MySQLdb
from numpy import *
from Path import *
import winsound
import csv
import time
from sklearn.linear_model import LogisticRegression


def c_train():
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
    print 'get train data', time.time() - start
    return array(c_list)


def c_cross_validation():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()

    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    for i in range(23, 24):
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
    print 'get train data', time.time() - start
    return array(c_list)


def c_all_data():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()

    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    for i in range(0, 24):
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
    print 'get all data', time.time() - start
    return array(c_list)


def c_data():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()

    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    for i in range(0, 22):
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
    print 'get data', time.time() - start
    return array(c_list)


def c_test():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()

    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    for i in range(22, 24):
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
    print 'get train data', time.time() - start
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

    f = file(Path.c_feature_test, 'r')
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
    print 'get predict data', time.time() - start
    return array(c_list), array(category_list)


def find_parameter(train, cross_v):
    weight = linspace(1, 15, 30)
    c = linspace(1, 15, 30)
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
    train1 = c_train()
    print 'train 1 mean:', mean(train1[:, -1] == 1)
    cross_v1 = c_cross_validation()
    print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)
    data = c_data()
    print 'data 1 mean:', mean(data[:, -1] == 1)
    all_data = c_all_data()
    print 'all data 1 mean:', mean(all_data[:, -1] == 1)
    find_parameter(train1, cross_v1)
    lr = LogisticRegression(class_weight={1: 4.42857142857}, C=8.42857142857)
    lr.fit(train1[:, :-1], train1[:, -1])
    predict = c_test()
    z = lr.predict(predict[:, :-1])
    tp = 0.0
    fp = 0.0
    fn = 0.0
    tn = 0.0
    for k in range(shape(z)[0]):
        if z[k] == 1 and predict[k, -1] == 1:
            tp += 1
        elif z[k] == 1 and predict[k, -1] == 0:
            fp += 1
        elif z[k] == 0 and predict[k, -1] == 1:
            fn += 1
        else:
            tn += 1
    print  tp, fp, fn, tn
    precision1 = tp / (tp + fp)
    recall1 = tp / (tp + fn)
    f1 = (precision1 * recall1) * 2 / (precision1 + recall1)
    print 'precision:', precision1
    print 'recall:', recall1
    print 'F1 score:', f1
    ################################################
    lr.fit(data[:, :-1], data[:, -1])
    z = lr.predict(predict[:, :-1])
    tp = 0.0
    fp = 0.0
    fn = 0.0
    tn = 0.0
    for k in range(shape(z)[0]):
        if z[k] == 1 and predict[k, -1] == 1:
            tp += 1
        elif z[k] == 1 and predict[k, -1] == 0:
            fp += 1
        elif z[k] == 0 and predict[k, -1] == 1:
            fn += 1
        else:
            tn += 1
    print  tp, fp, fn, tn
    precision1 = tp / (tp + fp)
    recall1 = tp / (tp + fn)
    f1 = (precision1 * recall1) * 2 / (precision1 + recall1)
    print 'precision:', precision1
    print 'recall:', recall1
    print 'F1 score:', f1
    print 'time cost:', time.time() - start
    #####################################
    predict, c_id = c_predict()
    lr.fit(all_data[:, :-1], all_data[:, -1])
    z = lr.predict(predict[:, :-1])
    #####################################
    # db = MySQLdb.connect(
    #     host='172.27.35.2',
    #     port=3306,
    #     user="zaber",
    #     passwd="1234",
    #     db="recommend"
    # )
    # sql = "insert into tb_c_feature_predict VALUES (%s)"
    # values = []
    # for i in range(shape(z)[0]):
    #     if z[i] == 1:
    #         values.append((str(c_id[i]),))
    # try:
    #     cursor = db.cursor()
    #     cursor.executemany(sql, values)
    #     db.commit()
    # except:
    #     print "insert error"
    # db.close()
    print mean(z == 1)
    winsound.Beep(300, 1000)
    # 0.71872060207 4.42857142857 8.42857142857 15
    # 0.713114754098 3.41379310345 13.0689655172  23