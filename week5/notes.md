#!  interpreter 
# comments 

script
* sourced --> . scriptname 
* executed --> ./scriptname 

script location --> keep the script in folder listed in $PATH 

bash environment 
* login shell --> /etc/profile
* non-login shell --> /etc/bash.bashrc

shell script arguments 
* $0 name of the shell program
* $# number of arguments passed
* $1 or ${1} first argument
* ${11} eleventh argument
* $* or $@ all arguments at once
* “$*” all argument as a single string
* “$@” all argument as a separate strings