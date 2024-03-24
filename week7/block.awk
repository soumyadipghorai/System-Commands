#!/usr/bin/gawk -f 
BEGIN {
    print "BEGIN action is processed";
}
# will be executed 
{
    print "DEFAULT action is processed"; 
}
END {
    print("END action is processed")
}