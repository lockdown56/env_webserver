#!/bin/bash
# 检查是否有 nginx 用户组和用户名, 
# 如果没有就创建, 用于nginx 的安装

egrep "^mysql" /etc/group >& /dev/null
if [ $? -ne 0 ]
then
    groupadd mysql
fi

egrep "^mysql" /etc/passwd >& /dev/null
if [ $? -ne 0 ]
then
    useradd -g mysql -M mysql
fi

exit 0