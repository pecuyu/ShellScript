#! /bin/sh

# desc		this shell script is to use if elif else fi
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# 判空 
case ${1} in
   "")
	echo "you must execute the sh with one argument!";
	exit 0;
    ;;

   "hello")
	echo "your argument is hello"

    ;;

   *)
	echo "unkonw args"
    ;;
esac
  
#end 
