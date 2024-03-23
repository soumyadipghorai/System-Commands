#!/bin/bash

dpkg-query -W -f'${Section} ${binary:Package}\n' |  egrep 'kd.*$' # packages with kd 

cat chartypes.txt | grep '[[:alpha:]]' #any lines with alphabets
cat chartypes.txt | grep '^[[:alpha:]]' #starts with alphabets
cat chartypes.txt | grep '[[:alpha:]]$' #ends with alphabets
cat chartypes.txt | grep '[[:alnum:]]' #any lines with alpha numeric
cat chartypes.txt | grep '[[:digit:]]' #any lines with digit
cat chartypes.txt | grep '[[:cntrl:]]' # control character 
cat chartypes.txt | grep -v '[[:cntrl:]]' # don't contain control character 
cat chartypes.txt | grep '[[:punct:]]' # contain punctuation
cat chartypes.txt | grep '[[:lower:]]' # contain lower
cat chartypes.txt | grep '[[:upper:]]' # contain upper
cat chartypes.txt | grep '[[:print:]]' # contain printable character 
cat chartypes.txt | grep '[[:blank:]]' # contain printable character 
cat chartypes.txt | grep '[[:graph:]]' # contain any non space character  
cat chartypes.txt | egrep -v '^$' # non empty lines   
cat patterns.txt | egrep '[[:digit:]]{12}' # 12 digit numbers
cat patterns.txt | egrep '\b[[:digit:]]{6}\b' # 6 digit numbers
cat patterns.txt | egrep '\b[[:alpha:]]{2}[[:digit:]]{2}[[:alpha:]]{1}[[:digit:]]{3}' # extract roll number 
cat patterns.txt | egrep '\b[[:alnum:]]+\.[[:alnum:]]+\b' #? extract url 
cut -c 1-4 fields.txt # 1st 4 chars in each line
cut -c -4 fields.txt # 1st 4 chars in each line
cut -c 4- fields.txt # 4 to end 
cat fields.txt | cut -d " " -f 1 #? split by " " and take 1st field 
cat fields.txt | cut -d ";" -f 2 | cut -d "," -f 1 #? between ;-,
cat fields.txt | egrep ';.*,' # pattern matching ^^
cat fields.txt | cut -d ";" -f 2 | cut -d "," -f 1 | head -n 2 | tail -n 1 # remove from top and bottom