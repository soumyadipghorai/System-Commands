#!/usr/bin/gwak -f 
BEGIN {
    print "BEGIN action is processed";
}
#   for only the 1st field 
$1 ~ /[[:alpha:]]/{
    print "alpha record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
$1 ~ /[[:alnum:]]/{
    print "alnum record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
$1 ~ /[[:digit:]]/{
    print "digit record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
END {
    print "END action is processed";
}