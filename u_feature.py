# -*- coding: utf-8 -*-
# Filename :Analysis

# Date     :2016-08-02 01:40
# Author   :zaber

import MySQLdb
from numpy import *
from Path import *
import winsound
from sklearn.linear_model import LogisticRegression


def u_train():
    u_list = []
    db = MySQLdb.connect(
        host='172.27.35.2',
        port=3306,
        user="zaber",
        passwd="1234",
        db="recommend"
    )
    cursor = db.cursor()
    sql = "select user_id,c1,c2,c3,c4,count,rate from tb_u_feature "
    u_all = {}
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            u_all[row[0]] = {'all_c1': row[1], 'all_c2': row[2], 'all_c3': row[3], 'all_c4': row[4],
                             'all_count': row[5],
                             'all_rate': row[6]}
    except:
        print '\033[1;31;m'
        print 'db.rollback()all'
        print '\033[0m'
        db.rollback()
    for i in range(shape(Path.tb_train)[0]):
        cursor = db.cursor()
        sql = "select user_id,c1,c2,c3,c4,count,rate from " + Path.tb_u_feature[i]
        u7 = {}
        try:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                u7[row[0]] = {'c1': row[1], 'c2': row[2], 'c3': row[3], 'c4': row[4], 'count': row[5], 'rate': row[6],
                              'result': 0}
        except:
            print '\033[1;31;m'
            print Path.tb_u_feature[i]
            print '\033[0m'
            db.rollback()
        for user in u7:
            u7[user] = dict(u7[user], **u_all[user])
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

        for user in u7_result:
            if u7.has_key(user):
                u7[user]['result'] = 1

        for user in u7:
            u_list.append(
                [int(u7[user]['c1']), int(u7[user]['c2']), int(u7[user]['c3']), int(u7[user]['c4']),
                 int(u7[user]['count']),
                 int(u7[user]['rate']), int(u7[user]['all_c1']), int(u7[user]['all_c2']), int(u7[user]['all_c3']),
                 int(u7[user]['all_c4']), int(u7[user]['all_count']), int(u7[user]['all_rate']),
                 int(u7[user]['result'])])
    db.close()
    return array(u_list)


def u_test():
    db = MySQLdb.connect(
        host='172.27.35.2',
        port=3306,
        user="zaber",
        passwd="1234",
        db="recommend"
    )
    cursor = db.cursor()

    sql = "select user_id,c1,c2,c3,c4,count,rate from tb_u_feature "
    u_all = {}
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            u_all[row[0]] = {'all_c1': row[1], 'all_c2': row[2], 'all_c3': row[3], 'all_c4': row[4],
                             'all_count': row[5],
                             'all_rate': row[6]}
    except:
        print '\033[1;31;m'
        print 'db.rollback()all'
        print '\033[0m'
        db.rollback()

    sql = "select user_id,c1,c2,c3,c4,count,rate from tb_u_feature_test "
    u7 = {}

    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            u7[row[0]] = {'c1': row[1], 'c2': row[2], 'c3': row[3], 'c4': row[4],
                          'count': row[5],
                          'rate': row[6]}
    except:
        print '\033[1;31;m'
        print 'db.rollback()7'
        print '\033[0m'
        db.rollback()
    u_list = []
    user_id = []
    for user in u7:
        u7[user] = dict(u7[user], **u_all[user])

    for user in u7:
        user_id.append(user)
        u_list.append(
            [int(u7[user]['c1']), int(u7[user]['c2']), int(u7[user]['c3']), int(u7[user]['c4']),
             int(u7[user]['count']),
             int(u7[user]['rate']), int(u7[user]['all_c1']), int(u7[user]['all_c2']), int(u7[user]['all_c3']),
             int(u7[user]['all_c4']), int(u7[user]['all_count']), int(u7[user]['all_rate'])])
    db.close()
    return array(u_list), user_id


def train(u):
    weight = linspace(1, 25, 50)
    c = linspace(1, 15, 50)
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for k in range(shape(weight)[0]):
        for j in range(shape(c)[0]):
            p = LogisticRegression(class_weight={1: weight[k]}, C=c[j])
            # class_weight={1:2}
            p.fit(u[:-17186, :-1], u[:-17186, -1])
            test = u[-17186:, :-1]
            result = u[-17186:, -1]
            Z = p.predict(test)
            TP = 0.0
            FP = 0.0
            FN = 0.0
            TN = 0.0
            for i in range(shape(Z)[0]):
                if Z[i] == 1 and result[i] == 1:
                    TP += 1
                elif Z[i] == 1 and result[i] == 0:
                    FP += 1
                elif Z[i] == 0 and result[i] == 1:
                    FN += 1
                else:
                    TN += 1
            print weight[k], c[j], TP, FP, FN, TN
            precision = TP / (TP + FP)
            recall = TP / (TP + FN)
            F1 = (precision * recall) * 2 / (precision + recall)
            print 'precision:', precision
            print 'recall:', recall
            print 'F1 score:', F1
            if max_F1 < F1:
                max_F1 = F1
                max_w = weight[k]
                max_c = c[j]
                print '\033[1;31;m'
                print max_F1, max_w, max_c
                print '\033[0m'
    print max_F1, max_w, max_c


if __name__ == '__main__':
    train = u_train()
    f = LogisticRegression(class_weight={1: 6.38775510204}, C=11.2857142857)
    # class_weight={1:2}
    f.fit(train[:, :-1], train[:, -1])
    predict, u_id = u_test()
    h = f.predict(predict)
    db = MySQLdb.connect(
        host='172.27.35.2',
        port=3306,
        user="zaber",
        passwd="1234",
        db="recommend"
    )
    for i in range(shape(h)[0]):
        if h[i] == 1:

            cursor = db.cursor()
            sql = "insert into tb_u_feature_predict VALUE ("\
                  +u_id[i] +")"
            cursor.execute(sql)
            db.commit()
    db.close()
    print mean(h == 1)
    # 0.403978727595 6.38775510204 11.2857142857
    winsound.Beep(300, 1000)
