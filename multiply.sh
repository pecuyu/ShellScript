#! /bin/sh
# desc		calcalate the product of two integers
# author 	pecuyu
# date 		2017.8.15
# version	1.0

echo ">>>to finish this calculation,you need enter two integers!"
read -p ">please enter the first one:" first 
read -p ">please enter the second one:" second
result=$((${first}*${second}))
echo ">the result of ${first}*${second} is ${result}"

exit 0

