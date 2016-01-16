#!/usr/bin/python
# -*- coding: utf-8 -*-

import sqlite3 as lite
import dataset
import sys

ipadd = '192.168.43.201'
con = None
db = dataset.connect('sqlite:///test.db')
print db
target = db['targets']
target.insert(dict(ip=ipadd))
print target
