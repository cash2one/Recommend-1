# -*- coding: utf-8 -*-
# Filename :u_feature
# Date     :2016-08-08 16:04
# Author   :zaber


from numpy import *
from Path import *
import winsound
import csv
import time
from sklearn.linear_model import LogisticRegression
import  random

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
slice = random.sample(list, 5)  # 从list中随机获取5个元素，作为一个片断返回

print slice