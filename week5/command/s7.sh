#!/bin/bash
# never pass user input into eval
cmd="date"
fmt="+%d-%b-%Y"
eval $cmd $fmt
# -----------------------------------------------
cmd="date"
fmt="+%d-%b-%Y"
echo $$
eval $cmd $fmt; echo $$
# ------------------------------------------------
# functions 
source mylib.sh

if [ $# -lt 2 ]
then 
    usage $0 # name by which the script was launched 
    exit 1 
fi 

swap $1 $2 
# ----------------------
# argument after -a -b 
# argument after -c
while getopts "ab:c:" options; 
do 
    case "${options}" in 
        b) 
            barg=${OPTARG}
            echo accepted: -b $barg 
            ;;
        c) 
            carg=${OPTARG}
            echo accepted: -b $carg 
            ;;
        a) 
            echo accepted: -a 
            ;;
        *) 
            echo Usage: -a -b barg -c carg
            ;;
    esac 
done 
# ----------------------------
echo select a middle one 
select i in {1..10}
do 
    case $i in 
        1 | 2 | 3)
            echo you picked a smalle one 
            ;; 
        8 | 9 | 10) 
            echo you picked a big one
            ;; 
        4 | 5 | 6 | 7) 
            echo you picked the right one 
            break 
            ;;
        # unless we pick any of these options we can't break 
    esac 
done 
echo selection completed with $i