# -*- coding: utf-8 -*-
# Filename :u_feature
# Date     :2016-08-08 16:04
# Author   :zaber

import MySQLdb
from numpy import *
from Path import *
import winsound
import csv
import time
from sklearn.linear_model import LogisticRegression


def addtwodimdict(thedict, key_a, key_b, val):
  if key_a in thedict:
    thedict[key_a].update({key_b: val})
  else:
    thedict.update({key_a:{key_b: val}})

mapdict = dict()
addtwodimdict(mapdict, 'Beijing', 'Guangzhou', 1897)
addtwodimdict(mapdict, 'Chengdu', 'Guangzhou', 1243)
addtwodimdict(mapdict, 'Guangzhou', 'Shanghai', 1212)
addtwodimdict(mapdict, 'Beijing', 'Chengdu', 1516)
addtwodimdict(mapdict, 'Chengdu', 'Shanghai', 1657)
addtwodimdict(mapdict, 'Beijing', 'Shanghai', 1075)
print 'The distance between Chengdu and Guangzhou is ',mapdict['Chengdu']['Guangzhou']
