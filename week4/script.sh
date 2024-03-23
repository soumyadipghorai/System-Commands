nano file.py # will open the .py in editor 
vi file.py # vi editor 

grep 'Raman' names.txt  # only lines that have Raman in it 
cat names.txt | grep 'ai' # better 
cat names.txt | grep 'S.n' # match any character after  S and then n 
cat names.txt | grep '.am' 
cat names.txt | grep '.am$' # line that ends with am 
cat names.txt | grep '.\.' # names with initials --> 1st . for anything and 2nd . for initials 
cat names.txt | grep '.\.' # names with initials --> 1st . for anything and 2nd . for initials 
cat names.txt | grep '^M' # starts with M
cat names.txt | grep -i '^e' # case insensitive 
cat names.txt | grep 'am\b' # \b for word boundary --> word ends with am
cat names.txt | grep 'M[ME]' #start with M and second is M or E 
cat names.txt | grep 'S.*[mn]' #start with S and ends with m or n
cat names.txt | grep '\bS.*[mn]' #only for the names 
cat names.txt | grep '[aeiou]' # names with vowel 
cat names.txt | grep -i 'B90[1-4]' # starts with 90 and ends with 1-4
cat names.txt | grep -i 'B90[^1-4]' # starts with 90 and ends with anything except 1-4
cat names.txt | grep 'M\{2\}' #MM 
cat names.txt | grep '\(ma\)' #match group of characters 
cat names.txt | grep '\(ma\).*\1' #match group of characters twice 
cat names.txt | grep '\(a.\)\{2,3\}' # match 2 or 3 times 
cat names.txt | egrep '^M+' # 1 or more  
cat names.txt | egrep '(ma)+' #ma occurs ones or more 
cat names.txt | egrep '(ma)*' #ma occurs or not
cat names.txt | egrep '(EA|ME)' #  EA  or ME 
