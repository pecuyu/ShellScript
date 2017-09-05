#!/bin/bash

read -p "Pleas input your birthday (MMDD, ex> 0709): " bir
now=`date +%m%d`
if [ "$bir" = "$now" ]; then
	echo "Happy Birthday to you!!!"
elif [ "$bir" -gt "$now" ]; then  # 大于
	year=`date +%Y`
	total_d=$(($((`date --date="$year$bir" +%s`-`date +%s`))/60/60/24+1)) # %s 换算成秒，然后再转换成天数
	echo "Your birthday will be $total_d later"
else
	year=$((`date +%Y`+1))  # 往后推一年  ` `  包含的被识别为命令
	total_d=$(($((`date --date="$year$bir" +%s`-`date +%s`))/60/60/24+1))
	echo "Your birthday will be $total_d later"
fi
