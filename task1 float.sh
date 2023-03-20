#!/bin/bash
### Exit codes:
#       0: Success
#       1: Insufficient parameters
#       2: invalid operation
val1=$1
val2=$2
op=$3

[ ${#} -ne 3 ] && echo "Insufficient parameters " && exit 1
result=0
case ${op} in
"+")

        result=$(echo ${val1}+${val2} | bc)

        ;;
"*")
        result=$(echo ${val1}*${val2} | bc)
        ;;
"-")
        result=$(echo ${val1}-${val2} | bc)
        ;;
"/")
                        result=$(echo ${val1}/${val2} | bc)

                ;;
*)
        echo "invalid operation,enter + or - or * or /"
        exit 2
        ;;
esac
echo "result=$result"
exit 0
