#!/bin/bash
# 检查是否有 nginx 用户组和用户名, 
# 如果没有就创建, 用于nginx 的安装

egrep "^nginx" /etc/group >& /dev/null
if [ $? -ne 0 ]
then
    groupadd nginx
fi

egrep "^nginx" /etc/passwd >& /dev/null
if [ $? -ne 0 ]
then
    useradd -g nginx -M nginx
fi

exit 0