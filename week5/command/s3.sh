#!/bin/bash 
for i in {1..9}
do  
    echo $i 
    if [ $i -le 3 ] || [ $i -ge 7 ]
    then 
        echo $i is out of range 
    fi 
    if [ $i -gt 3 ] && [ $i -le 7 ]
    then 
        echo $i is in range 
    fi 
done 
#----------------------------------------------------
if [ $# -lt 2 ]
then 
    echo use with two natural numbers as argument 
    exit 1 
fi 

# starting with digit and any number of such digits and end 
re='^[0-9]+$'
echo $1 $2
# check if argument mathces the regex 
if ! [[ $1 =~ $re ]] 
then 
    echo $1 is not a natural number 
    exit 1 
fi 

if ! [[ $2 =~ $re ]]
then 
    echo $2 is not a natural number 
    exit 1 
fi  

let a=$1*$2 
echo product a is $a 
(( a++ ))
echo product a incremented is $a 

let b=$1**$2 
echo "power(arg1, arg2) is" $b

let c=$[ $1 + $2 + 10]
echo sum+10 is $c 

let d=$(expr $1 + $2 + 20)
echo sum+20 is $d 

f=$(( $1 * $2 * 2 ))
echo product times 2 is $f
# ------------------------------------
# if its not already installed use the following command 
sudo apt install bc 
bc -l # will give a built in calculator 
# to quit the calculator simply type 
quit 