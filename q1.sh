#!/bin/bash                                                                     
grep -v '^[[:space:]]*$' quotes.txt | awk '!seen[$0]++'
