#!/bin/bash

wget http://www.kcbs.us/events/new
#Wget to pull from new list of events at KCBQ

grep -e event new > trim1.txt
grep '<tr>' trim1.txt > cleanenough.txt
#Extra Cleaning

cut -d '>' -f 15 cleanenough.txt > trimevent.txt
cut -d '<' -f 1 trimevent.txt >EventNameList.txt
#Trims out for Event names

cut -d '>' -f 17 cleanenough.txt > trimlocation.txt
cut -d '<' -f 1 trimlocation.txt >> EventNameList.txt
#Trims out Location 

cut -d '>' -f 7 cleanenough.txt > trimdate.txt
cut -d '<' -f 1 trimdate.txt >EventDateList.txt
#Trims out for Event names

#while read EventNameList.txt; do
#	echo $EventNameList.txt
#done > file.txt

#-----------------------------------------------------------
#clean up txt files below

rm -rf trim1.txt
rm -rf cleanenough.txt

rm -rf trimevent.txt

rm -rf trimlocation.txt

rm -rf trimdate.txt

rm -rf new*
