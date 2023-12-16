echo ${!H*} # var start with H
mydate=`date` # store output of date command 
echo ${#myvar} # length 
echo ${mydate:6:10} # print from 6-10 
echo ${mydate:-6:10} # print from 6-10 from right 
echo ${myvar##*.} # things after .
echo ${myvar%.*} # things before .
echo ${myvar%%.*} # only first .

echo ${myvar%%.*}.${myvar##*.} # firstname + extension
echo ${myvar}
echo ${myvar//e/E} # replace e with E 
echo ${myvar/%e/E} # replace e with E from end 
echo ${mydate,,} # all lower case 
echo ${mydate^^} # all upper case 
declare -i mynum # restriction for int 
declare -l mynum # restriction for lowercase
declare -u mynum # restriction for uppercase 
declare +u mynum # remove restriction  

declare -a arr
arr[0]=1
arr[1]=2
arr[10]=2
echo ${#arr[@]} # len 
echo ${arr[@]} # arr
echo ${!arr[@]} # indices
unset 'arr[10]'
arr+=(val) # append 

declare -A hash 
hash[0]="aakc"
hash[1]="aqkjc"
hash["qkqd"]="aqljnkjc"
echo ${!hash[@]} # indices

echo {a..z}
echo * # all files 