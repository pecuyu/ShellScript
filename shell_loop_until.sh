#! /bin/sh

# desc		this shell script is to use until
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# do something here 

until [ "${ans}" = "yes" -o "${ans}" = "YES" ]
do

  read -p "please input your answer:" ans

done
echo "your answer is right"

#end 
