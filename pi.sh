#! /bin/sh

# desc		this shell script is to calculate the value of pi 
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# do something here 

echo  "This scrpit will calculate pi value. \n"
echo  "You should input a float number to calculate pi value.\n"
read -p "The scale number (10~10000) ? " input

num=${input:-"10"}

echo "starting calcuate pi value. be patient ..."
# 4*a(1)  是 bc 主动提供的一个计算pi的函数，scale就是要bc计算几个小数点下位数
echo "scale=${num}; 4*a(1)" | bc -lq


#end 
