# -*- coding: utf-8 -*-
# Filename :tmp
# Date     :2016-08-02 17:28
# Author   :zaber
from Path import *
import MySQLdb
from  numpy import *
import csv
import time

start = time.time()
# f = file(Path.i_feature, 'r')
# reader = csv.reader(f)
# i_all = {}
i_list = []
# for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
#     i_all[item_id] = {'all_all1': all1, 'all_all2': all2, 'all_all3': all3, 'all_all4': all4,
#                       'all_allcount': allcount, 'all_act1': act1, 'all_act2': act2, 'all_act3': act3,
#                       'all_act4': act4,
#                       'all_actcount': actcount}
#
# print 11
# del reader
# print 11
db = MySQLdb.connect(
    host=Path.host,
    port=3306,
    user=Path.user,
    passwd="1234",
    db="recommend"
)
for i in range(shape(Path.tb_train)[0]):
    cursor = db.cursor()
    sql = "select item_id,all1,all2,all3,all4,allcount,act1,act2,act3,act4,actcount from " + Path.tb_i_feature[i]
    sql = 'select * from tb_i_feature_18_24_nov'
    i7 = {}
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            i7[row[0]] = {'all1': row[1], 'all2': row[2], 'all3': row[3], 'all4': row[4],
                          'allcount': row[5], 'act1': row[6], 'act2': row[2], 'act3': row[3],
                          'act4': row[4],'actcount': row[5],'result':0}
    except:
        print '\033[1;31;m'
        print Path.tb_i_feature[i]
        print '\033[0m'
        db.rollback()
    # for item in i7:
    #     i7[item] = dict(i7[item], **i_all[item])
    # cursor = db.cursor()

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

    for item in i7_result:
        if i7.has_key(item):
            i7[item]['result'] = 1

    for item in i7:
        i_list.append(
            [int(i7[item]['all1']), int(i7[item]['all2']), int(i7[item]['all3']), int(i7[item]['all4']),
             int(i7[item]['allcount']), int(i7[item]['act1']), int(i7[item]['act2']), int(i7[item]['act3']),
             int(i7[item]['act4']),
             int(i7[item]['actcount']),
             int(i7[item]['result'])])

                # for item in i7:
                #     i_list.append(
                #         [int(i7[item]['all1']), int(i7[item]['all2']), int(i7[item]['all3']), int(i7[item]['all4']),
                #          int(i7[item]['allcount']), int(i7[item]['act1']), int(i7[item]['act2']), int(i7[item]['act3']),
                #          int(i7[item]['act4']),
                #          int(i7[item]['actcount']),
                #          int(i7[item]['all_all1']), int(i7[item]['all_all2']), int(i7[item]['all_all3']),
                #          int(i7[item]['all_all4']),
                #          int(i7[item]['all_allcount']), int(i7[item]['all_act1']), int(i7[item]['all_act2']),
                #          int(i7[item]['all_act3']),
                #          int(i7[item]['all_act4']),
                #          int(i7[item]['all_actcount']),
                #          int(i7[item]['result'])])
db.close()
print time.time() - start
