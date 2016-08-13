# -*- coding: utf-8 -*-
# Filename :uc_feature
# Date     :2016-08-12 20:57
# Author   :zaber

import MySQLdb
from numpy import *
from Path import *
import winsound
import csv
import time
from sklearn.linear_model import LogisticRegression


def uc_train():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
    uc_list = []
    for i in range(0, 23):
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            uc7[user_id] = dict()
            uc7[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate),
                                           float(all1), float(all2), float(all3), float(all4), float(allcount),
                                           float(allturnrate),
                                           float(act1), float(act2), float(act3), float(act4), float(actcount),
                                           float(actturnrate)]

        for user_id in uc7:
            for category in uc7[user_id]:
                uc7[user_id][category] = uc7[user_id][category] + u_all[user_id] + c_all[category]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select user_id,item_category from " + Path.tb_train_result[
            i] + " where behavior_type='4' group by user_id,item_category"
        uc7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                uc7_result[row[0]] = dict()
                uc7_result[row[0]][row[1]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for user_id in uc7_result:
            if uc7.has_key(user_id):
                for category in uc7_result[user_id]:
                    if uc7[user_id].has_key(category):
                        uc7[user_id][category][-1] = 1
        for user_id in uc7:
            for category in uc7[user_id]:
                uc_list.append(uc7[user_id][category])
    return array(uc_list)


def uc_cross_validation():
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()
    for item_category, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
        c_all[item_category] = [float(all1), float(all2), float(all3), float(all4), float(allcount), float(allturnrate),
                                float(act1), float(act2), float(act3), float(act4), float(actcount), float(actturnrate),
                                float(0)]
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        u_all[user_id] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate)]
    uc_list = []
    for i in range(23, 24):
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            uc7[user_id] = dict()
            uc7[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate),
                                           float(all1), float(all2), float(all3), float(all4), float(allcount),
                                           float(allturnrate),
                                           float(act1), float(act2), float(act3), float(act4), float(actcount),
                                           float(actturnrate)]

        for user_id in uc7:
            for category in uc7[user_id]:
                uc7[user_id][category] = uc7[user_id][category] + u_all[user_id] + c_all[category]
        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select user_id,item_category from " + Path.tb_train_result[
            i] + " where behavior_type='4' group by user_id,item_category"
        uc7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                uc7_result[row[0]] = dict()
                uc7_result[row[0]][row[1]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for user_id in uc7_result:
            if uc7.has_key(user_id):
                for category in uc7_result[user_id]:
                    if uc7[user_id].has_key(category):
                        uc7[user_id][category][-1] = 1
        for user_id in uc7:
            for category in uc7[user_id]:
                uc_list.append(uc7[user_id][category])
    return array(uc_list)


def uc_all_data():
    uc_list = []
    for i in range(0, 24):
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            uc7[user_id] = dict()
            uc7[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate),
                                           float(all1), float(all2), float(all3), float(all4), float(allcount),
                                           float(allturnrate),
                                           float(act1), float(act2), float(act3), float(act4), float(actcount),
                                           float(actturnrate), float(0)]

        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select user_id,item_category from " + Path.tb_train_result[
            i] + " where behavior_type='4' group by user_id,item_category"
        uc7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                uc7_result[row[0]] = dict()
                uc7_result[row[0]][row[1]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for user_id in uc7_result:
            if uc7.has_key(user_id):
                for category in uc7_result[user_id]:
                    if uc7[user_id].has_key(category):
                        uc7[user_id][category][-1] = 1
        for user_id in uc7:
            for category in uc7[user_id]:
                uc_list.append(uc7[user_id][category])
    return array(uc_list)


def uc_data():
    uc_list = []
    for i in range(0, 22):
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            uc7[user_id] = dict()
            uc7[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate),
                                           float(all1), float(all2), float(all3), float(all4), float(allcount),
                                           float(allturnrate),
                                           float(act1), float(act2), float(act3), float(act4), float(actcount),
                                           float(actturnrate), float(0)]

        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select user_id,item_category from " + Path.tb_train_result[
            i] + " where behavior_type='4' group by user_id,item_category"
        uc7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                uc7_result[row[0]] = dict()
                uc7_result[row[0]][row[1]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for user_id in uc7_result:
            if uc7.has_key(user_id):
                for category in uc7_result[user_id]:
                    if uc7[user_id].has_key(category):
                        uc7[user_id][category][-1] = 1
        for user_id in uc7:
            for category in uc7[user_id]:
                uc_list.append(uc7[user_id][category])
    return array(uc_list)


def uc_test():
    uc_list = []
    for i in range(22, 24):
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            uc7[user_id] = dict()
            uc7[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate),
                                           float(all1), float(all2), float(all3), float(all4), float(allcount),
                                           float(allturnrate),
                                           float(act1), float(act2), float(act3), float(act4), float(actcount),
                                           float(actturnrate), float(0)]

        db = MySQLdb.connect(
            host=Path.host,
            port=3306,
            user=Path.user,
            passwd="1234",
            db="recommend"
        )
        cursor = db.cursor()
        sql = "select user_id,item_category from " + Path.tb_train_result[
            i] + " where behavior_type='4' group by user_id,item_category"
        uc7_result = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                uc7_result[row[0]] = dict()
                uc7_result[row[0]][row[1]] = 1
        except:
            print '\033[1;31;m'
            print 'db.rollback()7result'
            print '\033[0m'
            db.rollback()
        db.close()
        for user_id in uc7_result:
            if uc7.has_key(user_id):
                for category in uc7_result[user_id]:
                    if uc7[user_id].has_key(category):
                        uc7[user_id][category][-1] = 1
        for user_id in uc7:
            for category in uc7[user_id]:
                uc_list.append(uc7[user_id][category])
    return array(uc_list)


def uc_predict():
    uc_list = []
    for i in range(0, 23):
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        for user_id, item_category, c1, c2, c3, c4, count, c_rate, all1, all2, all3, all4, allcount, allturnrate, act1, act2, act3, act4, actcount, actturnrate in reader:
            uc7[user_id] = dict()
            uc7[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(count), float(c_rate),
                                           float(all1), float(all2), float(all3), float(all4), float(allcount),
                                           float(allturnrate),
                                           float(act1), float(act2), float(act3), float(act4), float(actcount),
                                           float(actturnrate), float(0)]
        id_list = []
        category_list = []
        for user_id in uc7:
            for category in uc7[user_id]:
                id_list.append(user_id)
                category_list.append(category)
                uc_list.append(uc7[user_id][category])
    return array(uc_list), array(id_list), array(category_list)



def find_parameter(train, cross_v):
    weight = linspace(38, 46, 20)
    c = linspace(1, 5, 20)
    # 0.0552763819095 31.3103448276 1.25
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
            if TP == 0 and FP == 0:
                precision = 0
            else:
                precision = TP / (TP + FP)
            if TP == 0 and FN == 0:
                recall = 0
            else:
                recall = TP / (TP + FN)
            F1 = 0
            if precision > 0 and recall > 0:
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
    train1 = uc_train()
    print 'train 1 mean:', mean(train1[:, -1] == 1)
    cross_v1 = uc_cross_validation()
    print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)
    # data = uc_data()
    # print 'data 1 mean:', mean(data[:, -1] == 1)
    # all_data = uc_all_data()
    # print 'all data 1 mean:', mean(all_data[:, -1] == 1)
    find_parameter(train1, cross_v1)
    # lr = LogisticRegression(class_weight={1: 3.41379310345}, C=13.0689655172)
    # lr.fit(train1[:, :-1], train1[:, -1])
    # predict = uc_test()
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
    # predict, uc_id = uc_predict()
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
    # sql = "DELETE FROM tb_uc_feature_predict"
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
    # sql = "insert into tb_uc_feature_predict VALUES (%s)"
    # values = []
    # for i in range(shape(z)[0]):
    #     if z[i] == 1:
    #         print uc_id[i]
    #         values.append((str(uc_id[i]),))
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
    # 0.71872060207 4.42857142857 8.42857142857 15
    # 0.713114754098 3.41379310345 13.0689655172  23
