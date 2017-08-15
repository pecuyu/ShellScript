#! /bin/sh
# desc		this is to use date to touch 3 files
# author 	pecuyu
# date 		2017.8.15
# version	1.0

echo -e "I will use 'touch' command to create 3 files."
read -p "please enter base file name:" input

# 检查用户是否的输入，没有则使用默认
filename=${input:-"filename"}

# 前天、昨天、今天
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)

# 文件名
filename1=${filename}${date1}
filename2=${filename}${date2}
filename3=${filename}${date3}

# 创建
touch "${filename1}"
touch "${filename2}"
touch "${filename3}"

exit 0

