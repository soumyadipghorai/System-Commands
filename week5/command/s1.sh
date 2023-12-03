#!/bin/bash
# s1.sh is my 1st script 
echo hello world
echo the PID of the process running this script is:P
echo $$
ps --forest 
export myvar=MYVAR
echo $myvar
echo i invoke as 
# -------------------------------------------------
# will give how this script was invoked
echo $0
echo number of argument passed 
echo $#
echo first argument 
echo $1
echo second argument passed 
echo $2
# -------------------------------------------------
# check if two arguments are same 
if test $1 = $2; 
then 
    echo the two arguments are same 
fi
# -------------------------------------------------
# check if number of arguments < 3
if test $# -lt 3; 
then 
    echo "please pass more args" 
fi 
# -------------------------------------------------
if test $# -ge 2; 
then 
    if test $1 = $2; 
    then 
        echo the two arguments are same 
    fi 
fi 
# -------------------------------------------------