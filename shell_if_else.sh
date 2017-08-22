#! /bin/sh

# desc		this shell script is to use if elif else fi
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# 判空 
if [ -z "${1}"  ]; 
	then echo "you must execute the sh with one argument!";
	exit 0;

# 参数是否为hello
elif [ "${1}" = "hello" ];
	then echo "your argument is hello"

else 
	echo "unkonw args"

fi
  
#end 
