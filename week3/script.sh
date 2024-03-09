ls || date # only ls will be excuted 
ls && date # both will be executed 
ls /blah && date # none will be executed 
ls /blah || date # 2nd will be executed 

ls -1 > file1 # store the results in file1 --> if error occure the content would be 0
cat > file # input will be taken from keyword the following 
cat >> file1 # append 
you can come out using ctrl+D 

date >> file1 # append to the file if exists 
date >> file1; wc -l file1 >> file1

ls $HOME /blah > output.txt 2> error.txt # errors are in error and output in output 
# 2> --> std error 

ls /usr/bin | wc -l > file1 # pipe
ls $HOME | tee file1 # will show output and store in file1
ls $HOME /blah | tee file1 file2 # 2 copies in file1 and file2 and error msg shown 
ls $HOME /blah 2> /dev/null | tee file1 file2 | wc -l # doesn't show the error 

apt-cache pkgnames | less # will give all the packages installed and show page by page
# q to exit 
apt-cache pkgnames nm # starts with nm 

##### checksum
echo "something" > file1.txt 
echo "somethings" > file2.txt 
md5sum file1.txt 
md5sum file2.txt 
sha256sum file1.txt 
sha256sum file2.txt 
# the checksum will be significantly different for both 

sudo apt-get install dpkg # install 
dpkg -s nmap # status of the package 