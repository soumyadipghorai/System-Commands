#!/usr/bin/gwak -f 
BEGIN {
    nl = 2003
    nc = 
    for (j=0; j<nl; j++){
        for (i=0; i<nc; i++){
            printf("%f ", rand())
        }
        printf("\n")
    }
}
{
}
END {
    # print nl " lines with " nc " columns of random numbers created"
}