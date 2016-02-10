#!/usr/bin/python
#NDSR nutrient script
#Grace Shearrer, 2016
#the only things you should change are those in green
#you need to change your path to where ever it is you keep your datafiles

import pandas as pd
#import numpy as np
import os


#os.chdir('/Users/gs24494/Desktop/sugar_brain_data')
os.chdir('/Users/gs24494/Google Drive/sugar_brain_data')
df=pd.io.parsers.read_table('SB04.txt', sep='\t')
#this groups by the subject number
#if you have subjects with inconsistent naming this will not work!
#this takes all your values and takes the mean, by the subject number
df2=df.groupby(['Participant ID']).mean()

#this is the output file it creates
df2.to_csv('sugar_brain_nutrients_grouped.csv', sep=',')