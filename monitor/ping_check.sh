#!/bin/bash
# ping_check.sh —— 批量检测目标主机是否在线

TARGETS="192.168.10.1 192.168.10.2 www.baidu.com"

for ip in $TARGETS
do
    ping -c 2 -W 2 $ip > /dev/null
    if [ $? -eq 0 ]; then
        echo "$ip 在线"
    else
        echo "$ip 不在线"
    fi
done
