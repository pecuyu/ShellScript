#! /bin/sh

# desc		this shell script is to use test  
# author 	pecuyu
# date 		2017.8.22
# version	1.0

# 提示输入文件名 
echo "please input a file name,whoose type and permission  will be checked!"
read -p "input the file name:" filename

# 文件名是否为空
test -z ${filename}  && echo "you must input a not null file name!" && exit 1


# 判断文件是否存在
test  ! -e ${filename} && echo "the file ${filename} does not exist" exist 1

# 判断文件类型与权限
test -f ${filename} && filetype="regulare file"
test -d ${filename} && filetype="directory"
test -r ${filename} && perm="readable"
test -w ${filename} && perm="${perm} writable"
test -x ${filename} && perm="${perm} executable"

# 输出结果
echo "The filename: ${filename} is a ${filetype}"
echo "the file permissions are : ${perm}"
#end 
