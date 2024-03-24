#!/usr/bin/gwak -f 
BEGIN {
    print "BEGIN action is processed";
}
# $0 ==> print each line
{
    print "record:" $0; 
    print "processing record number:" FNR; 
    print "numbber of fields in the current record:" NF; 
}
END {
    print "END action is processed";
}