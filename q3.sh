#!/bin/bash                                                                     
read input
wc -c $input | awk '{print "size = "$1}'
wc -l $input | awk '{print "lines = "$1}'
wc -w $input | awk '{print "words = "$1}'

awk '$0="Line No: "NR" - Count of Words: "NF' $input
cat $input | tr [:space:] '\n' | tr ['.',',',':','!','~','?','(',')'] '\n' | sort | uniq -c -d | awk '{print "Word: " $2 " - Count of repetition: " $1}'
