#! /bin/sh

# desc		this shell script is to shift position args 
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# do something here 

echo "the program's name is ${0}"
echo "the args number is : $# "
if [ "$#" -lt "2" ]; 
	then echo "the number of args is less than 2 " ;  exit 0
fi

echo "the whole input args is : $@"
echo "the first agrs is : ${1}"
echo "the second agrs is : ${2}"

shift 

echo "the first agrs is : ${1}"
echo "the second agrs is : ${2}"

#end 
