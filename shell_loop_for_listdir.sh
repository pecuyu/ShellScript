#! /bin/sh

# desc		this shell script is to list dir
# author 	pecuyu
# date 		2017.8.15
# version	1.0

# 1. 先看看这个目录是否存在啊？
read -p "Please input a directory: " dir
  if [ "${dir}" == "" -o ! -d "${dir}" ]; then
	echo "The ${dir} is NOT exist in your system."
	exit 1
  fi

# 2. 开始测试文件

filelist=$(ls ${dir})  # 列出所有在该目录下的文件名

for filename in ${filelist}
do
	perm=""
	test -r "${dir}/${filename}" && perm="${perm} readable"
	test -w "${dir}/${filename}" && perm="${perm} writable"
	test -x "${dir}/${filename}" && perm="${perm} executable"
	echo "The file ${dir}/${filename}'s permission is ${perm} "
done

#end 
