#! /bin/bash

# desc		this shell script is to use function in shell script
# author 	pecuyu
# date 		2017.8.15
# version	1.0


function print() 
{
	echo -n  "you choice is " # -n 同一行显示
}

echo "This program will print your selection !"

case "${1}" in
	"one")

		print; echo "1";
	;;

	"two")

		print ;  echo "2"
	;;

	"three")

		print ;  echo "3"
	;;
	
	*)
		echo "use ${0} [one]|[two]|[three]"

esac

#end 
