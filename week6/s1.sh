# hardware info
man hwinfo
hwinfo > hwinfo.txt 

# list hardware 
lshw > lshw.txt 

# for only display
lshw -c display

# info about the partitions 
cat /proc/partitions 

# will give how much memory is free 
free 

# graphical way of looking at the info 
harinfo

# graphics card info 
clinfo 

# tells various battery deivces available 
upower -e 

upower -i device_name 

# harddisk param
hdparm

# check about hdparm 
sudo hdparm -Tt /dev/sda 

# check for input output operations 
sudo apt install sysstat # to install iostat 
iostat -dx /dev/sdb

# ifconfig
sudo apt install sysstat # to install ifconfig 
ifconfig # 

# --------------------------------------------------
# --------------------------------------------------
# --------------------------------------------------
echo $PS1 
PS1="\u@\h:\w\$" # change color to white 
PS1="\t:\w\$" # instead of username and hostname time is displayed  
PS1="\d:\w\$" # date 
PS1="\#:\$" # numebr of command 
source .bashrc # default prompt string 
$PS2="close the string" # changes the secondary prompt 

select x in alpha beta gamma; do echo $x; done
# will ask for options and you'll be able to see the PS3 

PS3="choose your option" # change ps3 

set -x # for debugging and display ps4 (+)
PS4="now running"

python # >>>
octave # octave:2>

x=[1:1:100]
x=[1:10:100]
y=[1:10:100]
plot(y,x)

gnuplot # gnuplot>
sage # sage:
plot(sin(x), x, 0,2*pi)