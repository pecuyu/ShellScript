
#-t you may eat.
# History:
# 2015/07/17  VBird  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
eat[1]="卖当当汉堡"
eat[2]="肯爷爷炸鸡"
eat[3]="彩虹日式便当"
eat[4]="越油越好吃大雅"
eat[5]="想不出吃啥学餐"
eat[6]="太师父便当"
eat[7]="池上便当"
eat[8]="怀念火车便当"
eat[9]="一起吃泡面"
eatnum=9
eated=0
while [ "${eated}" -lt 3 ]; do
	check=$(( ${RANDOM} * ${eatnum} / 32767 + 1 ))
	mycheck=0
	if [ "${eated}" -ge 1 ]; then
		for i in $(seq 1 ${eated} )  #检查是否在已吃数组中
		do
			if [ ${eatedcon[$i]} == $check ]; then
				mycheck=1
			fi
		done
	fi

	if [ ${mycheck} == 0 ]; then # 检查是否重复，不重复则输出
		echo "your may eat ${eat[${check}]}"
		eated=$(( ${eated} + 1 ))   # 已吃数加一
		eatedcon[${eated}]=${check}  # 记录已吃的索引
	fi
done 
