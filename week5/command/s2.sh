#!/bin/bash
echo "use of for loop"

# ----------------------------------------------------
# arg1 arg2 arg3 are treated as list of 3 items so it will print 
# arg1 
# arg2 
# arg3
for i in arg1 arg2 arg3 
do 
    echo $i 
done
# ----------------------------------------------------
# will print file_1 - file_9
for i in file_{1..9} 
do 
    echo $i 
done
# ----------------------------------------------------
# will print file_A1 - file_A9, file_B1 - file_D9
for i in file_{A..D}{1..9} 
do 
    echo $i 
done
# ----------------------------------------------------
# will print all files available in /bash starting with z
for i in $(ls /bash/z*)
do 
    echo $i 
done
# ----------------------------------------------------
# will print all files available in /bash containing shell script 
for i in $(ls /bash)
do 
    echo /bin/$i 
    file /bin/$i | grep "Shell script"
done
