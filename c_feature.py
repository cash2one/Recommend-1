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


def c_data(start, end):
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()
    c_list = []
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]

    for i in range(start, end):
        f = file(Path.tb_feature_c[i], 'r')
        reader = csv.reader(f)
        c7 = dict()
        for item_category, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1, \
            actt7b1, actt7b2, actt7b3, actt7b4, actt7r1, actt3b1, actt3b2, actt3b3, actt3b4, actt3r1, actt1b1, actt1b2, actt1b3, actt1b4, actt1r1, \
                in reader:
            if float(t7b1) == 0:
                r7b41 = 0
            else:
                r7b41 = float(t7b4) / float(t7b1)
            if float(t7b2) == 0:
                r7b42 = 0
            else:
                r7b42 = float(t7b4) / float(t7b2)
            if float(t7b3) == 0:
                r7b43 = 0
            else:
                r7b43 = float(t7b4) / float(t7b3)
            if float(t3b1) == 0:
                r3b41 = 0
            else:
                r3b41 = float(t3b4) / float(t3b1)
            if float(t3b2) == 0:
                r3b42 = 0
            else:
                r3b42 = float(t3b4) / float(t3b2)
            if float(t3b3) == 0:
                r3b43 = 0
            else:
                r3b43 = float(t3b4) / float(t3b3)
            if float(t1b1) == 0:
                r1b41 = 0
            else:
                r1b41 = float(t1b4) / float(t1b1)
            if float(t1b2) == 0:
                r1b42 = 0
            else:
                r1b42 = float(t1b4) / float(t1b2)
            if float(t1b3) == 0:
                r1b43 = 0
            else:
                r1b43 = float(t1b4) / float(t1b3)
            if c_all[item_category][0] == 0:
                r371 = 0
                r171 = 0
                r7b1 = 0
            else:
                r7b1 = float(t7b1) / c_all[item_category][0]
                if float(t7b1) == 0:
                    r371 = 0
                    r171 = 0
                else:
                    r371 = float(t3b1) / float(t7b1)
                    r171 = float(t1b1) / float(t7b1)
            if c_all[item_category][1] == 0:
                r372 = 0
                r172 = 0
                r7b2 = 0
            else:
                r7b2 = float(t7b2) / c_all[item_category][1]
                if float(t7b2) == 0:
                    r372 = 0
                    r172 = 0
                else:
                    r372 = float(t3b2) / float(t7b2)
                    r172 = float(t1b2) / float(t7b2)
            if c_all[item_category][2] == 0:
                r373 = 0
                r173 = 0
                r7b3 = 0
            else:
                r7b3 = float(t7b3) / c_all[item_category][2]
                if float(t7b3) == 0:
                    r373 = 0
                    r173 = 0
                else:
                    r373 = float(t3b3) / float(t7b3)
                    r173 = float(t1b3) / float(t7b3)
            if c_all[item_category][2] == 0:
                r374 = 0
                r174 = 0
                r7b4 = 0
            else:
                r7b4 = float(t7b4) / c_all[item_category][2]
                if float(t7b4) == 0:
                    r374 = 0
                    r174 = 0
                else:
                    r374 = float(t3b4) / float(t7b4)
                    r174 = float(t1b4) / float(t7b4)
            if c_all[item_category][4] == 0:
                rc = 0
            else:
                rc = float(t7b1 + t7b2 + t7b3 + t7b4) / c_all[item_category][4]
            t7count = float(t7b1 + t7b2 + t7b3 + t7b4)
            r71c = float(t7b1) / t7count
            r72c = float(t7b2) / t7count
            r73c = float(t7b3) / t7count
            t3count = float(t3b1 + t3b2 + t3b3 + t3b4)
            t1count = float(t1b1 + t1b2 + t1b3 + t1b4)
            if t3count == 0:
                r31c = 0
                r32c = 0
                r33c = 0
            else:
                r31c = float(t3b1) / t3count
                r32c = float(t3b2) / t3count
                r33c = float(t3b3) / t3count
            if t1count == 0:
                r11c = 0
                r12c = 0
                r13c = 0
            else:
                r11c = float(t1b1) / t1count
                r12c = float(t1b2) / t1count
                r13c = float(t1b3) / t1count
            c7[item_category] = [
                float(t7b1), float(t7b2), float(t7b3), float(t7b4), float(t7r1),
                float(t3b1), float(t3b2), float(t3b3), float(t3b4), float(t3r1),
                float(t1b1), float(t1b2), float(t1b3), float(t1b4), float(t1r1),
                float(actt7b1), float(actt7b2), float(actt7b3), float(actt7b4), float(actt7r1),
                float(actt3b1), float(actt3b2), float(actt3b3), float(actt3b4), float(actt3r1),
                float(actt1b1), float(actt1b2), float(actt1b3), float(actt1b4), float(actt1r1),
                # float(r7b1), float(r7b2), float(r7b3), float(r7b4), float(r371),
                # float(r372), float(r373), float(r374), float(r171),
                # float(r172), float(r173), float(r174), float(rc),
                float(r7b41), float(r7b42), float(r7b43),
                float(r3b41), float(r3b42), float(r3b43),
                float(r1b41), float(r1b42), float(r1b43),
                float(r71c), float(r72c), float(r73c),
                float(r31c), float(r32c), float(r33c),
                float(r11c), float(r12c), float(r13c)

            ]
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
    return array(c_list), array(category_list)


def find_parameter(train, cross_v):
    weight = linspace(3, 6, 12)
    c = linspace(10, 30, 50)
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for j in range(shape(c)[0]):
        for i in range(shape(weight) [0]):
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
    train1 = c_data(0, 23)
    print 'train 1 mean:', mean(train1[:, -1] == 1)
    cross_v1 = c_data(23, 24)
    print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)
    # data = c_data()
    # print 'data 1 mean:', mean(data[:, -1] == 1)
    # all_data = c_all_data()
    # print 'all data 1 mean:', mean(all_data[:, -1] == 1)
    find_parameter(train1, cross_v1)
    # lr = LogisticRegression(class_weight={1: 3.41379310345}, C=13.0689655172)
    # lr.fit(train1[:, :-1], train1[:, -1])
    # predict = c_test()
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
    # ################################################
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
    # predict, c_id = c_predict()
    # lr.fit(all_data[:, :-1], all_data[:, -1])
    # z = lr.predict(predict[:, :-1])
    # #####################################
    # db = MySQLdb.connect(
    #     host=Path.host,
    #     port=3306,
    #     user=Path.user,
    #     passwd="1234",
    #     db="recommend"
    # )
    # sql = "DELETE FROM tb_c_feature_predict"
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
    # sql = "insert into tb_c_feature_predict VALUES (%s)"
    # values = []
    # for i in range(shape(z)[0]):
    #     if z[i] == 1:
    #         print c_id[i]
    #         values.append((str(c_id[i]),))
    # try:
    #     cursor = db.cursor()
    #     cursor.executemany(sql, values)
    #     db.commit()
    # except:
    #     print "insert error"
    # db.close()
    # print 'predict mean', mean(z == 1)
    # print shape(z)[0]
    # winsound.Beep(300, 1000)
    # 0.71872060207 4.42857142857 8.42857142857 15
    # 0.713114754098 3.41379310345 13.0689655172  23
#     0.712457071495 3.6 20.0
