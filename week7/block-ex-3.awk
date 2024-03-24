#!/usr/bin/gwak -f 
BEGIN {
    print "BEGIN action is processed";
}
/[[:alpha:]]/{
    print "alpha record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
/[[:alnum:]]/{
    print "alnum record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
/[[:digit:]]/{
    print "digit record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
END {
    print "END action is processed";
}