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
f = file(Path.i_feature, 'r')
reader = csv.reader(f)
i_all = dict()

i_list = []
for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
    i_all[item_id] = [all1, all2, all3, all4, allcount, act1, act2, act3, act4, 0]

for i in range(shape(Path.tb_feature_i)[0]):
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
    for item in i7:
        i_list.append(i7[item])
print time.time() - start
