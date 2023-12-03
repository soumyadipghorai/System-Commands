#!/bin/bash 
set -x 
# run with the debugging on 
a=256 
b=4
c=3

ans=$( expr $a + $b )
echo $ans 

ans = $( expr $a - $b )
echo $ans 

ans = $( expr $a /* $b )
echo $ans 

ans = $( expr $a / $b )
echo $ans 

ans = $( expr $a % $b )
echo $ans 

ans = $( expr $a \> $b )
echo $ans 

ans = $( expr $a \>= $b )
echo $ans 

ans = $( expr $a \< $b )
echo $ans 

ans = $( expr $a \<= $b )
echo $ans 

ans = $( expr $a = $b )
echo $ans 

ans = $( expr $a != $b )
echo $ans 

ans = $( expr $a \| $b )
echo $ans 

ans = $( expr $a \& $b )
echo $ans 

str="obctavio verion as in Jan 2022 is 6.4.0"
reg="[oO]ctav[aeiou]"
ans=$( expr "$str" : $reg )
echo $ans 

ans=$(expr substr "$str" 1 6 )
echo $ans 

ans=$(expr substr "$str" "vw" )
echo $ans 

ans=$(expr length "$str" )
echo $ans 


