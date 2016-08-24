# -*- coding: utf-8 -*-
# Filename :uc_feature
# Date     :2016-08-12 20:57
# Author   :zaber



import csv
import winsound

from numpy import *

from Path import *


#  float(0)
def uc_data(start, end):
    ###################c_feature##########################
    print 'c_feature'
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()
    for item_category, c1, c2, c3, c4, count, all_rate, act1, act2, act3, act4, act_count, act_rate in reader:
        if float(c1) == 0:
            r1 = 0
        else:
            r1 = float(c4) / float(c1)
        if float(c2) == 0:
            r2 = 0
        else:
            r2 = float(c4) / float(c2)
        if float(c3) == 0:
            r3 = 0
        else:
            r3 = float(c4) / float(c3)
        if float(act1) == 0:
            rb41 = 0
        else:
            rb41 = float(act4) / float(act1)
        if float(act2) == 0:
            rb42 = 0
        else:
            rb42 = float(act4) / float(act2)
        if float(act3) == 0:
            rb43 = 0
        else:
            rb43 = float(act4) / float(act3)

        c_all[item_category] = [
            float(rb41), float(rb42), float(rb43),
            float(r1), float(r2), float(r3),
            # float(c1) / float(count), float(c2) / float(count),
            # float(c3) / float(count),
            # float(all_rate),
            # float(act1) / float(act_count), float(act2) / float(act_count),
            # float(act3) / float(act_count),
            # float(act_rate)
        ]
    ###################u_feature##########################ok
    print 'u_feature'
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        if float(c1) == 0:
            r1 = 0
        else:
            r1 = float(c4) / float(c1)
        if float(c2) == 0:
            r2 = 0
        else:
            r2 = float(c4) / float(c2)
        if float(c3) == 0:
            r3 = 0
        else:
            r3 = float(c4) / float(c3)
        u_all[user_id] = [
            # float(c1), float(c2), float(c3), float(c4),
            # float(count),
            float(c1) / float(count), float(c2) / float(count), float(c3) / float(count),
            float(r1), float(r2), float(r3),
            float(c_rate)
        ]

    ###################uc_feature##########################
    print 'uc_feature'
    f = file(Path.uc_feature, 'r')
    reader = csv.reader(f)
    uc_all = dict()
    for user_id, item_category, c1, c2, c3, c4, r1 in reader:
        if user_id not in uc_all:
            uc_all[user_id] = dict()
        uc_all[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(r1)]
    uc_list = []

    for i in range(start, end):
        #################uc7####################
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        print 'uc7'
        for user_id, item_category, t7g1, t3g1, t1g1, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1 in reader:
            # print t7r1
            if float(t7b1) >= 500:
                continue
            if float(t7b2) == 0 and float(t7b3) == 0 and float(t7b4) == 0:
                continue
            if float(t7b1) == 0:
                r7b41 = 0
            else:
                r7b41 = float(t7b4) / float(t7b1)
            if float(t7b2) == 0:
                r7b42 = 0
            else:
                r7b42 = float(t7b4) / float(t7b2)
            if float(t7b3) == 0:
                r7b43 = 0
            else:
                r7b43 = float(t7b4) / float(t7b3)
            if float(t3b1) == 0:
                r3b41 = 0
            else:
                r3b41 = float(t3b4) / float(t3b1)
            if float(t3b2) == 0:
                r3b42 = 0
            else:
                r3b42 = float(t3b4) / float(t3b2)
            if float(t3b3) == 0:
                r3b43 = 0
            else:
                r3b43 = float(t3b4) / float(t3b3)
            if float(t1b1) == 0:
                r1b41 = 0
            else:
                r1b41 = float(t1b4) / float(t1b1)
            if float(t1b2) == 0:
                r1b42 = 0
            else:
                r1b42 = float(t1b4) / float(t1b2)
            if float(t1b3) == 0:
                r1b43 = 0
            else:
                r1b43 = float(t1b4) / float(t1b3)
            t7count = float(t7b1 + t7b2 + t7b3 + t7b4)
            r71c = float(t7b1) / t7count
            r72c = float(t7b2) / t7count
            r73c = float(t7b3) / t7count
            t3count = float(t3b1 + t3b2 + t3b3 + t3b4)
            t1count = float(t1b1 + t1b2 + t1b3 + t1b4)
            if t3count == 0:
                r31c = 0
                r32c = 0
                r33c = 0
            else:
                r31c = float(t3b1) / t3count
                r32c = float(t3b2) / t3count
                r33c = float(t3b3) / t3count
            if t1count == 0:
                r11c = 0
                r12c = 0
                r13c = 0
            else:
                r11c = float(t1b1) / t1count
                r12c = float(t1b2) / t1count
                r13c = float(t1b3) / t1count

            if user_id not in uc7:
                uc7[user_id] = dict()
            uc7[user_id][item_category] = [
                float(t7b1), float(t7b2), float(t7b3), float(t7b4), float(t7r1),
                float(t3b1), float(t3b2), float(t3b3), float(t3b4), float(t3r1),
                float(t1b1), float(t1b2), float(t1b3), float(t1b4), float(t1r1),
                float(r7b41), float(r7b42), float(r7b43),
                float(r3b41), float(r3b42), float(r3b43),
                float(r1b41), float(r1b42), float(r1b43),
                float(r71c), float(r72c), float(r73c),
                float(r31c), float(r32c), float(r33c),
                float(r11c), float(r12c), float(r13c),
                # float(t7g1), float(t3g1), float(t1g1)
            ]

        #################c7####################
        f = file(Path.tb_feature_c[i], 'r')
        reader = csv.reader(f)
        c7 = dict()
        print 'c7'
        for item_category, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1, actt7b1, actt7b2, actt7b3, actt7b4, actt7r1, actt3b1, actt3b2, actt3b3, actt3b4, actt3r1, actt1b1, actt1b2, actt1b3, actt1b4, actt1r1 in reader:
            # if float(t7b1) >= 20000 or float(t7r1) <= 0.001:
            #     continue
            # if float(t3r1) <= 0.001:
            #     continue
            # if float(t7b2) == 0 and float(t7b3) == 0 and float(t7b4) == 0:
            #     continue
            # if float(t3b2) == 0 and float(t3b3) == 0 and float(t3b4) == 0:
            #     continue
            if float(t7b1) == 0:
                r7b41 = 0
            else:
                r7b41 = float(t7b4) / float(t7b1)
            if float(t7b2) == 0:
                r7b42 = 0
            else:
                r7b42 = float(t7b4) / float(t7b2)
            if float(t7b3) == 0:
                r7b43 = 0
            else:
                r7b43 = float(t7b4) / float(t7b3)
            if float(t3b1) == 0:
                r3b41 = 0
            else:
                r3b41 = float(t3b4) / float(t3b1)
            if float(t3b2) == 0:
                r3b42 = 0
            else:
                r3b42 = float(t3b4) / float(t3b2)
            if float(t3b3) == 0:
                r3b43 = 0
            else:
                r3b43 = float(t3b4) / float(t3b3)
            if float(t1b1) == 0:
                r1b41 = 0
            else:
                r1b41 = float(t1b4) / float(t1b1)
            if float(t1b2) == 0:
                r1b42 = 0
            else:
                r1b42 = float(t1b4) / float(t1b2)
            if float(t1b3) == 0:
                r1b43 = 0
            else:
                r1b43 = float(t1b4) / float(t1b3)
            t7count = float(t7b1 + t7b2 + t7b3 + t7b4)
            r71c = float(t7b1) / t7count
            r72c = float(t7b2) / t7count
            r73c = float(t7b3) / t7count
            t3count = float(t3b1 + t3b2 + t3b3 + t3b4)
            t1count = float(t1b1 + t1b2 + t1b3 + t1b4)
            if t3count == 0:
                r31c = 0
                r32c = 0
                r33c = 0
            else:
                r31c = float(t3b1) / t3count
                r32c = float(t3b2) / t3count
                r33c = float(t3b3) / t3count
            if t1count == 0:
                r11c = 0
                r12c = 0
                r13c = 0
            else:
                r11c = float(t1b1) / t1count
                r12c = float(t1b2) / t1count
                r13c = float(t1b3) / t1count
            c7[item_category] = [
                # float(t7b1), float(t7b2), float(t7b3), float(t7b4), float(t7r1),
                # float(t3b1), float(t3b2), float(t3b3), float(t3b4), float(t3r1),
                # float(t1b1), float(t1b2), float(t1b3), float(t1b4), float(t1r1),
                float(r7b41), float(r7b42), float(r7b43),
                float(r3b41), float(r3b42), float(r3b43),
                float(r1b41), float(r1b42), float(r1b43),
                float(r71c), float(r72c), float(r73c),
                float(r31c), float(r32c), float(r33c),
                float(r11c), float(r12c), float(r13c),
                # float(actt7b1), float(actt7b2), float(actt7b3), float(actt7b4), float(actt7r1),
                # float(actt3b1), float(actt3b2), float(actt3b3), float(actt3b4), float(actt3r1),
                # float(actt1b1), float(actt1b2), float(actt1b3), float(actt1b4), float(actt1r1),
            ]

        for user_id in uc7:
            for category in uc7[user_id]:
                uc7[user_id][category] = \
                    uc7[user_id][category] + \
                    uc_all[user_id][category] + \
                    u_all[user_id] + \
                    c_all[category] + \
                    c7[category] + \
                    [float(0)]

        f = file(Path.tb_feature_uc_result[i], 'r')
        reader = csv.reader(f)
        uc7_result = dict()

        for user_id, item_category in reader:
            if user_id not in uc7_result:
                uc7_result[user_id] = dict()
            uc7_result[user_id][item_category] = 1
        for user_id in uc7_result:
            if uc7.has_key(user_id):
                for category in uc7_result[user_id]:
                    if uc7[user_id].has_key(category):
                        uc7[user_id][category][-1] = 1
        for user_id in uc7:
            for category in uc7[user_id]:
                uc_list.append(uc7[user_id][category])

    return array(uc_list)


def uc_data1(start, end):
    ###################c_feature##########################
    print 'c_feature'
    f = file(Path.c_feature, 'r')
    reader = csv.reader(f)
    c_all = dict()
    for item_category, c1, c2, c3, c4, count, all_rate, act1, act2, act3, act4, act_count, act_rate in reader:
        if float(c1) == 0:
            r1 = 0
        else:
            r1 = float(c4) / float(c1)
        if float(c2) == 0:
            r2 = 0
        else:
            r2 = float(c4) / float(c2)
        if float(c3) == 0:
            r3 = 0
        else:
            r3 = float(c4) / float(c3)
        if float(act1) == 0:
            rb41 = 0
        else:
            rb41 = float(act4) / float(act1)
        if float(act2) == 0:
            rb42 = 0
        else:
            rb42 = float(act4) / float(act2)
        if float(act3) == 0:
            rb43 = 0
        else:
            rb43 = float(act4) / float(act3)

        c_all[item_category] = [
            float(rb41), float(rb42), float(rb43),
            float(r1), float(r2), float(r3),
            # float(c1) / float(count), float(c2) / float(count),
            # float(c3) / float(count),
            # float(all_rate),
            # float(act1) / float(act_count), float(act2) / float(act_count),
            # float(act3) / float(act_count),
            # float(act_rate)
        ]
    ###################u_feature##########################ok
    print 'u_feature'
    f = file(Path.u_feature, 'r')
    reader = csv.reader(f)
    u_all = dict()
    for user_id, c1, c2, c3, c4, count, c_rate in reader:
        if float(c1) == 0:
            r1 = 0
        else:
            r1 = float(c4) / float(c1)
        if float(c2) == 0:
            r2 = 0
        else:
            r2 = float(c4) / float(c2)
        if float(c3) == 0:
            r3 = 0
        else:
            r3 = float(c4) / float(c3)
        u_all[user_id] = [
            # float(c1), float(c2), float(c3), float(c4),
            # float(count),
            float(c1) / float(count), float(c2) / float(count), float(c3) / float(count),
            float(r1), float(r2), float(r3),
            float(c_rate)
        ]

    ###################uc_feature##########################
    print 'uc_feature'
    f = file(Path.uc_feature, 'r')
    reader = csv.reader(f)
    uc_all = dict()
    for user_id, item_category, c1, c2, c3, c4, r1 in reader:
        if user_id not in uc_all:
            uc_all[user_id] = dict()
        uc_all[user_id][item_category] = [float(c1), float(c2), float(c3), float(c4), float(r1)]
    uc_list = []

    for i in range(start, end):
        #################uc7####################
        f = file(Path.tb_feature_uc[i], 'r')
        reader = csv.reader(f)
        uc7 = dict()
        print 'uc7'
        for user_id, item_category, t7g1, t3g1, t1g1, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1 in reader:
            # print t7r1
            if float(t7b1) >= 500:
                continue
            if float(t7b2) == 0 and float(t7b3) == 0 and float(t7b4) == 0:
                continue
            if float(t7b1) == 0:
                r7b41 = 0
            else:
                r7b41 = float(t7b4) / float(t7b1)
            if float(t7b2) == 0:
                r7b42 = 0
            else:
                r7b42 = float(t7b4) / float(t7b2)
            if float(t7b3) == 0:
                r7b43 = 0
            else:
                r7b43 = float(t7b4) / float(t7b3)
            if float(t3b1) == 0:
                r3b41 = 0
            else:
                r3b41 = float(t3b4) / float(t3b1)
            if float(t3b2) == 0:
                r3b42 = 0
            else:
                r3b42 = float(t3b4) / float(t3b2)
            if float(t3b3) == 0:
                r3b43 = 0
            else:
                r3b43 = float(t3b4) / float(t3b3)
            if float(t1b1) == 0:
                r1b41 = 0
            else:
                r1b41 = float(t1b4) / float(t1b1)
            if float(t1b2) == 0:
                r1b42 = 0
            else:
                r1b42 = float(t1b4) / float(t1b2)
            if float(t1b3) == 0:
                r1b43 = 0
            else:
                r1b43 = float(t1b4) / float(t1b3)
            t7count = float(t7b1 + t7b2 + t7b3 + t7b4)
            r71c = float(t7b1) / t7count
            r72c = float(t7b2) / t7count
            r73c = float(t7b3) / t7count
            t3count = float(t3b1 + t3b2 + t3b3 + t3b4)
            t1count = float(t1b1 + t1b2 + t1b3 + t1b4)
            if t3count == 0:
                r31c = 0
                r32c = 0
                r33c = 0
            else:
                r31c = float(t3b1) / t3count
                r32c = float(t3b2) / t3count
                r33c = float(t3b3) / t3count
            if t1count == 0:
                r11c = 0
                r12c = 0
                r13c = 0
            else:
                r11c = float(t1b1) / t1count
                r12c = float(t1b2) / t1count
                r13c = float(t1b3) / t1count

            if user_id not in uc7:
                uc7[user_id] = dict()
            uc7[user_id][item_category] = [
                float(t7b1), float(t7b2), float(t7b3), float(t7b4), float(t7r1),
                float(t3b1), float(t3b2), float(t3b3), float(t3b4), float(t3r1),
                float(t1b1), float(t1b2), float(t1b3), float(t1b4), float(t1r1),
                float(r7b41), float(r7b42), float(r7b43),
                float(r3b41), float(r3b42), float(r3b43),
                float(r1b41), float(r1b42), float(r1b43),
                float(r71c), float(r72c), float(r73c),
                float(r31c), float(r32c), float(r33c),
                float(r11c), float(r12c), float(r13c),
                # float(t7g1), float(t3g1), float(t1g1)
            ]

        #################c7####################
        f = file(Path.tb_feature_c[i], 'r')
        reader = csv.reader(f)
        c7 = dict()
        print 'c7'
        for item_category, t7b1, t7b2, t7b3, t7b4, t7r1, t3b1, t3b2, t3b3, t3b4, t3r1, t1b1, t1b2, t1b3, t1b4, t1r1, actt7b1, actt7b2, actt7b3, actt7b4, actt7r1, actt3b1, actt3b2, actt3b3, actt3b4, actt3r1, actt1b1, actt1b2, actt1b3, actt1b4, actt1r1 in reader:
            # if float(t7b1) >= 20000 or float(t7r1) <= 0.001:
            #     continue
            # if float(t3r1) <= 0.001:
            #     continue
            # if float(t7b2) == 0 and float(t7b3) == 0 and float(t7b4) == 0:
            #     continue
            # if float(t3b2) == 0 and float(t3b3) == 0 and float(t3b4) == 0:
            #     continue
            if float(t7b1) == 0:
                r7b41 = 0
            else:
                r7b41 = float(t7b4) / float(t7b1)
            if float(t7b2) == 0:
                r7b42 = 0
            else:
                r7b42 = float(t7b4) / float(t7b2)
            if float(t7b3) == 0:
                r7b43 = 0
            else:
                r7b43 = float(t7b4) / float(t7b3)
            if float(t3b1) == 0:
                r3b41 = 0
            else:
                r3b41 = float(t3b4) / float(t3b1)
            if float(t3b2) == 0:
                r3b42 = 0
            else:
                r3b42 = float(t3b4) / float(t3b2)
            if float(t3b3) == 0:
                r3b43 = 0
            else:
                r3b43 = float(t3b4) / float(t3b3)
            if float(t1b1) == 0:
                r1b41 = 0
            else:
                r1b41 = float(t1b4) / float(t1b1)
            if float(t1b2) == 0:
                r1b42 = 0
            else:
                r1b42 = float(t1b4) / float(t1b2)
            if float(t1b3) == 0:
                r1b43 = 0
            else:
                r1b43 = float(t1b4) / float(t1b3)
            t7count = float(t7b1 + t7b2 + t7b3 + t7b4)
            r71c = float(t7b1) / t7count
            r72c = float(t7b2) / t7count
            r73c = float(t7b3) / t7count
            t3count = float(t3b1 + t3b2 + t3b3 + t3b4)
            t1count = float(t1b1 + t1b2 + t1b3 + t1b4)
            if t3count == 0:
                r31c = 0
                r32c = 0
                r33c = 0
            else:
                r31c = float(t3b1) / t3count
                r32c = float(t3b2) / t3count
                r33c = float(t3b3) / t3count
            if t1count == 0:
                r11c = 0
                r12c = 0
                r13c = 0
            else:
                r11c = float(t1b1) / t1count
                r12c = float(t1b2) / t1count
                r13c = float(t1b3) / t1count
            c7[item_category] = [
                # float(t7b1), float(t7b2), float(t7b3), float(t7b4),
                # float(t3b1), float(t3b2), float(t3b3), float(t3b4),
                # float(t1b1), float(t1b2), float(t1b3), float(t1b4),
                float(r7b41), float(r7b42), float(r7b43),
                float(r3b41), float(r3b42), float(r3b43),
                float(r1b41), float(r1b42), float(r1b43),
                float(r71c), float(r72c), float(r73c),
                float(r31c), float(r32c), float(r33c),
                float(r11c), float(r12c), float(r13c),
                float(t7r1), float(t3r1), float(t1r1),
                float(actt7r1), float(actt3r1), float(actt1r1),
                # float(actt7b1), float(actt7b2), float(actt7b3), float(actt7b4),
                # float(actt3b1), float(actt3b2), float(actt3b3), float(actt3b4),
                # float(actt1b1), float(actt1b2), float(actt1b3), float(actt1b4),
            ]

        for user_id in uc7:
            for category in uc7[user_id]:
                uc7[user_id][category] = \
                    uc7[user_id][category] + \
                    uc_all[user_id][category] + \
                    u_all[user_id] + \
                    c_all[category] + \
                    c7[category] + \
                    [float(0)]

        f = file(Path.tb_feature_uc_result[i], 'r')
        reader = csv.reader(f)
        uc7_result = dict()

        for user_id, item_category in reader:
            if user_id not in uc7_result:
                uc7_result[user_id] = dict()
            uc7_result[user_id][item_category] = 1
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
                                           float(actturnrate)]
        id_list = []
        category_list = []
        for user_id in uc7:
            for category in uc7[user_id]:
                id_list.append(user_id)
                category_list.append(category)
                uc_list.append(uc7[user_id][category])
    return array(uc_list), array(id_list), array(category_list)


from sklearn.ensemble import GradientBoostingClassifier


# lr0.32505399568 3.36842105263 39.5862068966
# 0.45817545905 191 4
# 0.458294573643 193 4
# 0.458698940998 203 4
def find_parameter(train, cross_v):
    max_F1 = 0.0
    max_w = 0.0
    max_c = 0.0
    for i in range(200, 201, 1):
        for j in range(5, 6, 1):
            p = GradientBoostingClassifier(n_estimators=200, learning_rate=0.04, max_depth=j, random_state=0)
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
            print i, j, TP, FP, FN, TN
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
                max_w = i
                max_c = j
                print '\033[1;31;m'
                print max_F1, max_w, max_c
                print '\033[0m'
    print max_F1, max_w, max_c


import random

if __name__ == '__main__':
    train1 = uc_data(0, 1)
    train1_p = train1[train1[:, -1] == 1]
    train1_n = train1[train1[:, -1] == 0]
    lp = len(train1_p)
    ln = len(train1_n)
    print lp
    print ln
    if float(ln) / lp > 12:
        a = range(0, ln)
        slice = random.sample(a, lp * 12)
        train1_n = train1_n[slice]
        train1 = concatenate((train1_p, train1_n))
    print shape(train1)
    print 'train 1 mean:', mean(train1[:, -1] == 1)
    cross_v1 = uc_data(23, 24)
    print shape(cross_v1)
    print 'cross 1 mean:', mean(cross_v1[:, -1] == 1)
    # data = uc_data()
    # print 'data 1 mean:', mean(data[:, -1] == 1)
    # all_data = uc_all_data()
    # print 'all data 1 mean:', mean(all_data[:, -1] == 1)
    find_parameter(train1, cross_v1)
    print '#######################################################'
    train2 = uc_data1(0, 1)
    train2_p = train2[train2[:, -1] == 1]
    train2_n = train2[train2[:, -1] == 0]
    train2_n = train2_n[slice]
    train2 = concatenate((train2_p, train2_n))
    print shape(train2)
    print 'train 1 mean:', mean(train2[:, -1] == 1)
    cross_v2 = uc_data1(23, 24)
    print shape(cross_v2)
    print 'cross 1 mean:', mean(cross_v2[:, -1] == 1)

    find_parameter(train2, cross_v2)
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
    # winsound.Beep(300, 500)
