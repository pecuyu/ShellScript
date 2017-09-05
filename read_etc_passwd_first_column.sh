#! /bin/sh

# desc		this shell script is to  read the first column of /etc/passwd
# author 	pecuyu
# date 		2017.9.5
# version	1.0

# do something here 

accounts=`cat /etc/passwd | cut -d':' -f1`  # -d 以：分割 ， -f 第几个字段
i=0
for account in $accounts
do 
   i=$(($i+1))  #累计行数
  echo "the ${i} account is ${account} "
done 

#end 
