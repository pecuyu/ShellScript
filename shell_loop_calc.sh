#! /bin/sh

# desc		this shell script is to calc 1+2+3+...+n
# author 	pecuyu
# date 		2017.8.15
# version	1.0


i="0"
total="0"

echo "enter a num to calc 1+2+3+...+n"
read -p "please enter a integer:" n

while [ "${i}" -lt "${n}"  ] # i<100 则继续
do 
  i=$(($i+1));
  total=$(($total+$i));

done

echo "1+2+3+...+${n}=${total}"
#end 
