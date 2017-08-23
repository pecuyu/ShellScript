#! /bin/bash

# desc		this shell script is to use function in shell script
# author 	pecuyu
# date 		2017.8.15
# version	1.0

function add()
{
  echo "参数1：$1"
  echo "参数2：$2"
  echo $(($1+$2)) 
  return $(($1+$2));
}


add 3 5

echo "result = $?" # 通过$?获取返回值

function print() 
{
	echo -e "you choice is \n ${1}"  # -e 对特殊字符转义的支持
}

echo "This program will print your selection !"

case "${1}" in
	"one")

		print 1;
	;;

	"two")

		print 2;
	;;

	"three")

		print 3;
	;;
	
	*)
		echo "use ${0} [one]|[two]|[three]"

esac

#end 
