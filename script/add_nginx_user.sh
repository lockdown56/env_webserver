#!/bin/bash

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