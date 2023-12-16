echo hello       world # single space delimiter 
echo $USERNAME 
echo $HOSTNAME 
alias date='date -R' 
echo $0 # process id 
echo $? # return code 
ps -ef 
# -------------------------
myvar=10 
echo $myvar 
myvar="kjanc"
echo$myvar 
unset myvar 
[[ -v myvar ]];
[[ -z  ${myvar+x} ]];
file='filename'
echo ${flie}_txt 
export file # made available to all children
bash #  for launching subshel; 
echo ${myvar:="my var"} # set if not present  
echo ${myvar:-"my var"} # if not set then print   
echo ${myvar:+"my var"} # if set then print   

