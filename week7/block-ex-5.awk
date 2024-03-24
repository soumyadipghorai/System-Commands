#!/usr/bin/gwak -f 
BEGIN {
    print "BEGIN action is processed";
    GS="[ .;:-]"
}
# field seperator list = [ .;:-]
# NF ==> number of fields 
NF > 2{
    print "acceptable record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
NF <=2 {
    print "not acceptable record:" FNR ":" $0;  
    print "numbber of fields in the current record:" NF; 
}
END {
    print "END action is processed";
}