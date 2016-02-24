#!/usr/bin/python
#NDSR food script
#Grace Shearrer, 2016
#the only things you should change are those in green
#you need to change your path to where ever it is you keep your datafiles
#must open the file in excel first. Remove row 2
import pandas as pd
import os

os.chdir('/Users/mland84/Desktop/PracticeData')

df=pd.io.parsers.read_table('SB09.txt', sep='\t')


#df=df.astype(float)
df2=df.groupby(['Participant ID']).mean()

df2.to_csv('practicedata1.csv', sep=',')

