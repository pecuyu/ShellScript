#! /bin/sh

# desc		this shell script is to use for loop for(...)
# author 	pecuyu
# date 		2017.8.15
# version	1.0

echo "please input a integer"
read -p "input a integer:" n

total=0;

for(( i=1;i<=$n;i++ ))
do
  
  total=$(($i+$total))

done

echo "the result of 1+2+3+...+${n} is ${total}"

#end


