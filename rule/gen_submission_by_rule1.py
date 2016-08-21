# -*-coding:utf-8-*-#

import cPickle
import csv
import MySQLdb
from Path import *
# 存储 (uid,iid)
result = {}

item = cPickle.load(open("../data/dictionary/item.pkl", "rb"))
day = cPickle.load(open("../data/dictionary/date/2014-12-18.pkl", "rb"))
db = MySQLdb.connect(
    host=Path.host,
    port=3306,
    user=Path.user,
    passwd="1234",
    db="recommend"
)
cursor = db.cursor()
sql = "select user_id from tb_u_feature where user_id in (select user_id from tb_result)and rate=0 and count >1080;"
u7_all = []
try:
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        u7_all.append(row[0])
except:
    print '\033[1;31;m'
    print 'db.rollback()7result'
    print '\033[0m'
    db.rollback()
db.close()

for key in day:
    uid, iid = key

    if uid not in u7_all and  item.has_key(iid) and  day[key][0][2] > 0 and day[key][0][3] == 0:
        rows = csv.reader(open("../data/user/" + key[0] + ".csv", "rb"))
        rows.next()
        for row in rows:
            if row[0] == "2014-12-18" and row[1] == key[1] and row[2] == "3" and (
                                int(row[-1]) >= 15 or int(row[-1]) == 12 or int(row[-1]) == 13):
                result[key] = 1

# 写入文件
f = open("tianchi_mobile_recommendation_predict.csv", "wb")
write = csv.writer(f)
write.writerow(["user_id", "item_id"])
total = 0
for key in result:
    write.writerow(key)
    total += 1
print "generate submission file,total %d  (uid,iid)" % total
f.close()
