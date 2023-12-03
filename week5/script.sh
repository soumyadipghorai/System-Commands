# print 
echo My home is $HOME
printf "My home is %s\n" $HOME

# read var 
read var 
echo $var 

vi sh1.sh # it will open an editor inside terminal 
# now you can write your code here
# once you're done you can press esc and :wq to get back to the terminal

#!/bin/bash
# s1.sh is my 1st script 
echo hello world

# now you can press ls -l s1.sh to check the content
# and . s1.sh will run the commands written inside the bash file 
# or you can write source s1.sh 