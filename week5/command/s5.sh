#!/bin/bash 
a=2.5
b=3.2 
c=4
d=$(bc -l << EOF
scale=5
($a+$b)^$c 
EOF
)
echo $d

# ------------------------------------------
# - for indentation 
# ABC worsk as a marker 
d=$(bc -l <<- ABC 
    scale=5
    ($a+$b)^$c 
ABC
)
echo $d


# ------------------------------------------
set -x 
echo oath is set as $PATH 
i=0 
IFS=: # internal field seperator 
for n in $PATH 
do 
    echo $i $n
    (( i++ ))
done 