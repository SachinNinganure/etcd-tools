#!/bin/bash

x=0;


grep -E '^((25[0-5]|2[0-4][0-9]|[1]?[1-9][0-9]?).){3}(25[0-5]|2[0-4][0-9]|[1]?[1-9]?[0-9])$' iptest.txt|sort|uniq > iptestsort.txt
while read p; do
  echo "$p"
  echo -e "sed -i 's\/${p}\/ipaddress${x}\/g'"
  x=$(($x+1))
done <iptestsort.txt








# file

# 1.1.1.1
# 10.10.10.10
# 5.5.5.5
# 6.6.6.6
# 6.144.6.6
# 6.6.6.6
# 10.10.10.10
# 5.5.5.5
# 6.6.6.6
# 10.10.10.10
# 5.5.5.5


# grep -E '^((25[0-5]|2[0-4][0-9]|[1]?[1-9][0-9]?).){3}(25[0-5]|2[0-4][0-9]|[1]?[1-9]?[0-9])$' iptest.txt|sort|uniq| awk 'BEGIN{ FS=OFS="=IPaddrr" } ($2+=i++)||1 '
# 10.10.10.10=IPaddrr0
# 1.1.1.1=IPaddrr1
# 5.5.5.5=IPaddrr2
# 6.144.6.6=IPaddrr3
# 6.6.6.6=IPaddrr4
