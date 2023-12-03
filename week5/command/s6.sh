#!/bin/bash 
if [ $# -gt 2 ]
then 
    echo arguments given and more than sufficient $# 
elif [ $# -gt 1 ]
then 
    echo arguments given and sufficiennt $#
elif [ $# -gt 0 ]
then 
    echo arguments given but not sufficiennt $#
else 
    echo arguments are needed $# 
fi 

# --------------------------------
echo whats youre fav image processor 
read pname # input 
# ;; ==> end of each case 
case $pname in 
    [gG]imp | inkscape) # gimp or inkscape 
        echo good choice 
        ;;
    [aA]dobe*) #adobe + ...
        echo that costs a lot 
        ;;
    imagej) # exactly imagej 
        echo option 3 
        ;;
    *)
        echo idk 
        ;; 
esac 
# -----------------------
begin=1 
finish=10 
for (( a=$begin; a<$finish; a++ ))
do 
    b=$((a**2))
    echo $b
done 
# -----------------------
# use time infront of the command to time the runtime 
begin1=1 
begin2=20 
finish=20 
for (( a=$begin1, b=$begin2; a<$finish; a++, b-- ))
do 
    c=$(( a**2 ))
    d=$(( b**2 ))
    echo $c $d
done 
# -----------------------
filename=largefile.txt
# if file already exists then break 
if [ -e $filename ]
then 
    echo file $filename exists  
    exit 1 
fi 

# echo will not be displayed as the output is redirected to the file 
begin1=1 
begin2=20 
finish=2000
for (( a=$begin1, b=$begin2; a<$finish; a++, b-- ))
do 
    c=$(( a**2 ))
    d=$(( b**2 ))
    echo $c $d
done > $filename
echo file $filename written 
ls -l $filename

# ---------------------
n=10
i=0 
while [ $i -lt $n ]
do 
    echo $i 
    (( i++ ))
    if [ $i -eq 5 ]
    then 
        echo 5 is bad num
        break 
    fi 
done 

# ---------------------------------------
i=0 
n=10
while [ $i -lt $n ]
do 
    echo $i 
    j=0
    while [ $j -le $i ]
    do 
        printf "$j" 
        (( j++ ))
        if [ $i -eq 7 ]
        then 
            echo 7 is bad 
            break 2 # break 2 loops 
        fi 
    done 
    (( i++ ))
done 
# similarly you can use continue 
# --------------------
i=1 
while [ -n "$1" ]
do 
    echo argument $i is $1
    shift 
    (( i++ ))
done 
echo number of arguments 
echo $#