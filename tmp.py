# -*- coding: utf-8 -*-
# Filename :tmp
# Date     :2016-08-02 17:28
# Author   :zaber
from Path import *
import csv
f = file(Path.i_feature, 'r')
reader = csv.reader(f)
i_all = {}
for item_id, all1, all2, all3, all4, allcount, act1, act2, act3, act4, actcount in reader:
    i_all[item_id] = {'all_all1': all1, 'all_all2': all2, 'all_all3': all3, 'all_all4': all4,
                      'all_allcount': allcount, 'all_act1': act1, 'all_act2': act2, 'all_act3': act3,
                      'all_act4': act4,
                      'all_actcount': actcount}

print 11
