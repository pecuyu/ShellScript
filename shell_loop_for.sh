#! /bin/sh

# desc		this shell script is to use for loop to check net state
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# do something here 

network_base="192.168.10"

for i in $(seq 1 100) # 循环1~100
do

  ping -c 1 -w 1 ${network_base}.${i} &> /dev/null && result=0 || result=1

  if [ "${result}" = 0 ]; then
	echo "network ${network_base}.${i} on"
 
  else
	echo "network ${network_base}.${i} off"
 
   fi

done

#end

#### ping命令参数 ####

#-a 将地址解析为计算机名。

#-d 使用Socket的SO_DEBUG功能。 

#-c<完成次数> 设置完成要求回应的次数。 

#-f 极限检测。 

#-i<间隔秒数> 指定收发信息的间隔时间。 

#-I<网络界面> 使用指定的网络界面送出数据包。 

#-l<前置载入> 设置在送出要求信息之前，先行发出的数据包。 

#-n 只输出数值。 

#-p<范本样式> 设置填满数据包的范本样式。 

#-q 不显示指令执行过程，开头和结尾的相关信息除外。 

#-r 忽略普通的Routing Table，直接将数据包送到远端主机上。 

#-R 记录路由过程。 

#-s<数据包大小> 设置数据包的大小。 

#-t<存活数值> 设置生存时间TTL的大小。 

#-v 详细显示指令的执行过程。  

# -w 设置超时时间
