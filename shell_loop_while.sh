#! /bin/sh

# desc		this shell script is to use while
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# do something here 

while [ "${ans}" != "yes" -a "${ans}" != "YES" ]
do

  read -p "please input your answer:" ans

done
echo "your answer is right"

#end 
