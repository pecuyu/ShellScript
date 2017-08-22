#! /bin/sh

# desc		this shell script is to test with [] 
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# do something here 

echo "please enter Y,y or N,n !" 
read  -p "input you answer:" input
FLAG=

# FLAG 为空则走上面一段
if [ ${FLAG} -z ]; then

	echo "FLAG is null"
	[ "${input}" = "Y" -o  "${input}" = "y" ] && echo "please continue" && exit 0

	[ "${input}" = "N" ] || [ "${input}" = "n" ] &&  echo "sorry,interrupt"	&& exit 0

	echo "incorrect intput!"

else 

	#if [ "${input}" = "Y" ] || [ "${input}" = "y" ];  then echo "please continue"
	if [ "${input}" = "Y" -o  "${input}" = "y" ];  then echo "please continue"

	elif [ "${input}" = "N" ] || [ "${input}" = "n" ];  then echo "sorry,interrupt"	

	else echo "incorrect intput!"

	fi
fi
#end 
