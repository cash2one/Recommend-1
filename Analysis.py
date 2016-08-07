# -*- coding: utf-8 -*-
# Filename :Analysis

# Date     :2016-08-02 01:40
# Author   :zaber

import MySQLdb
from numpy import *
from Path import *
import winsound

def u_train():
    u_list = []
    db = MySQLdb.connect(
        host="172.27.35.2",
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
        for item in u7:
            u7[item] = dict(u7[item], **u_all[item])
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

        for item in u7_result:
            if u7.has_key(item):
                u7[item]['result'] = 1

        for item in u7:
            u_list.append(
                [int(u7[item]['c1']), int(u7[item]['c2']), int(u7[item]['c3']), int(u7[item]['c4']),
                 int(u7[item]['count']),
                 int(u7[item]['rate']), int(u7[item]['all_c1']), int(u7[item]['all_c2']), int(u7[item]['all_c3']),
                 int(u7[item]['all_c4']), int(u7[item]['all_count']), int(u7[item]['all_rate']),
                 int(u7[item]['result'])])
    db.close()
    return array(u_list)


def u_test():
    db = MySQLdb.connect(
        host="172.27.35.2",
        port=3306,
        user="zaber",
        passwd="1234",
        db="recommend"
    )
    cursor = db.cursor()
    sql = "select user_id,c1,c2,c3,c4,count,rate from tb_u_feature_test "
    u7 = {}
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            u7[row[0]] = {'all_c1': row[1], 'all_c2': row[2], 'all_c3': row[3], 'all_c4': row[4],
                          'all_count': row[5],
                          'all_rate': row[6]}
    except:
        print '\033[1;31;m'
        print 'db.rollback()all'
        print '\033[0m'
        db.rollback()
    u_list = []
    for item in u7:
        u_list.append(
            [int(u7[item]['c1']), int(u7[item]['c2']), int(u7[item]['c3']), int(u7[item]['c4']),
             int(u7[item]['count']),
             int(u7[item]['rate']), int(u7[item]['all_c1']), int(u7[item]['all_c2']), int(u7[item]['all_c3']),
             int(u7[item]['all_c4']), int(u7[item]['all_count']), int(u7[item]['all_rate']),
             int(u7[item]['result'])])
    db.close()
    return array(u_list)

from sklearn.linear_model import LogisticRegression

if __name__ == '__main__':
    u = u_train()
    p = LogisticRegression(class_weight={1:25})
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
    print TP, FP, FN, TN
    precision = TP / (TP + FP)
    recall = TP / (TP + FN)
    print precision
    print recall
    print (precision * recall) * 2 / (precision + recall)
    winsound.Beep(300,1000)
