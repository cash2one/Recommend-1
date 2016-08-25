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
    for item_category, c1, c2, c3, c4, count, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        if float(c1) == 0:
            r1 = 0
        else:
            r1 = float(c4) / float(c1)
        if float(c2) == 0:
            r2 = 0
        else:
            r2 = float(c4) / float(c2)
        if float(c3) == 0:
            r3 = 0
        else:
            r3 = float(c4) / float(c3)
        if float(act1) == 0:
            rb41 = 0
        else:
            rb41 = float(act4) / float(act1)
        if float(act2) == 0:
            rb42 = 0
        else:
            rb42 = float(act4) / float(act2)
        if float(act3) == 0:
            rb43 = 0
        else:
            rb43 = float(act4) / float(act3)
        c_all[item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(allturnrate),
                                float(rb41), float(rb42), float(rb43),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(r1), float(r2), float(r3),
                                float(0)]
    print 'no c/c'
    for i in range(start, end):
        f = file(Path.tb_feature_c[i], 'r')
        reader = csv.reader(f)
        c7 = dict()
        for item_category, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1, \
            actt7b1, actt7b2, actt7b3, actt7b4, actt7r1, actt3b1, actt3b2, actt3b3, actt3b4, actt3r1, actt1b1, actt1b2, actt1b3, actt1b4, actt1r1, \
                in reader:
            if float(t7b1) >= 20000 or float(t7r1) <= 0.001:
                continue
            if float(t3r1) <= 0.001:
                continue
            if float(t7b2) == 0 and float(t7b3) == 0 and float(t7b4) == 0:
                continue
            if float(t3b2) == 0 and float(t3b3) == 0 and float(t3b4) == 0:
                continue
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
                float(r7b41), float(r7b42), float(r7b43),
                float(r3b41), float(r3b42), float(r3b43),
                float(r1b41), float(r1b42), float(r1b43),
                float(r71c), float(r72c), float(r73c),
                float(r31c), float(r32c), float(r33c),
                float(r11c), float(r12c), float(r13c),
                float(actt7b1), float(actt7b2), float(actt7b3), float(actt7b4), float(actt7r1),
                float(actt3b1), float(actt3b2), float(actt3b3), float(actt3b4), float(actt3r1),
                float(actt1b1), float(actt1b2), float(actt1b3), float(actt1b4), float(actt1r1),
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

from sklearn.ensemble import GradientBoostingClassifier
def find_parameter(train, cross_v):
    weight = linspace(2, 5, 15)
    # 0.744797371303 2.42857142857 30.3448275862
    c = linspace(20, 40, 30)
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for i in range(1,2,1):
        for j in range(199,200,1):
            p = GradientBoostingClassifier(n_estimators=150, learning_rate=0.04, max_depth=7, random_state=0)
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
            print i,j, TP, FP, FN, TN
            precision = TP / (TP + FP)
            recall = TP / (TP + FN)
            F1 = (precision * recall) * 2 / (precision + recall)
            print 'precision:', precision
            print 'recall:', recall
            print 'F1 score:', F1
            if max_F1 < F1:
                max_F1 = F1
                max_w =i
                max_c = j
                print '\033[1;31;m'
                print max_F1, max_w, max_c
                print '\033[0m'
    print max_F1, max_w, max_c


if __name__ == '__main__':
    if __name__ == '__main__':
        train1 = c_data(0, 1)
        print  shape(train1)
        train1_p = train1[train1[:, -1] == 1]
        train1_n = train1[train1[:, -1] == 0]
        cross_v1 = c_data(23, 24)
        lp = len(train1_p)
        ln = len(train1_n)
        train11=train1
        for num in range(1,2,1):
            if float(ln) / lp > 12:
                a = range(0, ln)
                slice = random.sample(a, lp * 12)
                train11_n = train1_n[slice]
                train11 = concatenate((train1_p, train11_n))
            print 'train 1 mean:', mean(train11[:, -1] == 1)
            print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)
            find_parameter(train11, cross_v1)
            print '#######################################################'
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

