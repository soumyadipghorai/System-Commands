less filename # navigate thorugh content of file
cat filename 
more filename # similar to less 
head filename 
head -n 5 filename 
tail filename
tail -n 5 filename
wc fiilename # details about file 
wc -l filename 
which less # where command is located 
whatis less # brief description about command 
whoami # username 
type ls # type of command 
touch file1 
mkdir mydir
cp file1 mydir # copy of file1 in mydir 
cp file1 file2 
rmdir # remove 
rmdir -r # force remove 
rmdir -i # interactive remove 
rm
ls -l filename 
mv mydir mydir3 # makes mydir mydir3 if doesn't exist else  move into the directory 
ln -s file1 file2 # symbolic link source destination
ln file1 file3 # hard link source destination with same inode number 
stat filename 
du filename 
