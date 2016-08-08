# -*- coding: utf-8 -*-
# Filename :tmp
# Date     :2016-08-02 17:28
# Author   :zaber

import MySQLdb
import MySQLdb.cursors as cursors

db = MySQLdb.connect(
    host="localhost",
    port=3306,
    user="root",
    passwd="1234",
    db="recommend",
    cursorclass=MySQLdb.cursors.SSCursor

)
cursor = db.cursor()
sql = "select item_id,all1,all2,all3,all4,allcount,act1,act2,act3,act4,actcount from tb_i_feature "
i_all = {}

cursor.execute(sql)
for row in cursor:
    i_all[row[0]] = {'all_all1': row[1], 'all_all2': row[2], 'all_all3': row[3], 'all_all4': row[4],
                     'all_allcount': row[5], 'all_act1': row[6], 'all_act2': row[2], 'all_act3': row[3],
                     'all_act4': row[4],
                     'all_actcount': row[5]}

# print '\033[1;31;m'
# print 'db.rollback()all'
# print '\033[0m'
# db.rollback()

db.close()
