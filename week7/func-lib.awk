function myfunc1(){
    printf "%f\n", 2*$1
}
function myfunc2(a){
    # convert into a number 
    b=a+0
    return sin(b)
}