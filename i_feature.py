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
        i_all[item_id] = [all1, all2, all3, all4, allcount, act1, act2, act3, act4, 0]

    for i in range(0, 15):
        print i
        f = file(Path.tb_feature_i[i], 'r')
        reader = csv.reader(f)
        i7 = dict()
        for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
            i7[item_id] = [all1, all2, all3, all4, allcount, act1, act2, act3, act4]
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
        i_list.append(list(i7.values()))
    print 'get train data',time.time() - start
    return array(i_list)


def i_test():
    db = MySQLdb.connect(
        host=Path.host,
        port=3306,
        user=Path.user,
        passwd="1234",
        db="recommend"
    )
    cursor = db.cursor()

    sql = "select item_id,all1,all2,all3,all4,allcount,act1,act2,act3,act4,actcount from tb_i_feature "
    i_all = {}
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            i_all[row[0]] = {'all_all1': row[1], 'all_all2': row[2], 'all_all3': row[3], 'all_all4': row[4],
                             'all_allcount': row[5], 'all_act1': row[6], 'all_act2': row[2], 'all_act3': row[3],
                             'all_act4': row[4],
                             'all_actcount': row[5]}
    except:
        print '\033[1;31;m'
        print 'db.rollback()all'
        print '\033[0m'
        db.rollback()

    sql = "select item_id,all1,all2,all3,all4,allcount,act1,act2,act3,act4,actcount from tb_i_feature_test "
    i7 = {}

    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            i7[row[0]] = {'all1': row[1], 'all2': row[2], 'all3': row[3], 'all4': row[4],
                          'allcount': row[5], 'act1': row[6], 'act2': row[2], 'act3': row[3],
                          'act4': row[4],
                          'actcount': row[5]}
    except:
        print '\033[1;31;m'
        print 'db.rollback()7'
        print '\033[0m'
        db.rollback()
    i_list = []
    item_id = []
    for item in i7:
        i7[item] = dict(i7[item], **i_all[item])

    for item in i7:
        item_id.append(item)
        i_list.append(
            [int(i7[item]['all1']), int(i7[item]['all2']), int(i7[item]['all3']), int(i7[item]['all4']),
             int(i7[item]['allcount']), int(i7[item]['act1']), int(i7[item]['act2']), int(i7[item]['act3']),
             int(i7[item]['act4']),
             int(i7[item]['actcount']),
             int(i7[item]['all_all1']), int(i7[item]['all_all2']), int(i7[item]['all_all3']),
             int(i7[item]['all_all4']),
             int(i7[item]['all_allcount']), int(i7[item]['all_act1']), int(i7[item]['all_act2']),
             int(i7[item]['all_act3']),
             int(i7[item]['all_act4']),
             int(i7[item]['all_actcount']),
             int(i7[item]['result'])])
    db.close()
    return array(i_list), item_id


def train(i):
    weight = linspace(1, 25, 50)
    c = linspace(1, 15, 50)
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for k in range(shape(weight)[0]):
        for j in range(shape(c)[0]):
            p = LogisticRegression(class_weight={1: weight[k]}, C=c[j])
            # class_weight={1:2}
            p.fit(i[:-17186, :-1], i[:-17186, -1])
            test = i[-17186:, :-1]
            result = i[-17186:, -1]
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
    start = time.time()
    data = i_train()
    print shape(data)
    train(data)
    # f = LogisticRegression(class_weight={1: 6.38775510204}, C=11.2857142857)
    # class_weight={1:2}
    # f.fit(train[:, :-1], train[:, -1])
    # predict, i_id = i_test()
    # h = f.predict(predict)
    # print  mean(h == 1)
    # 0.403978727595 6.38775510204 11.2857142857
    winsound.Beep(300, 1000)
