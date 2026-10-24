#!/bin/bash
# sysinfo.sh —— 一键查看系统基本信息（练习用）

echo "===== 主机名 ====="
hostname
echo "===== IP 地址 ====="
ip -4 addr show | grep inet | grep -v 127.0.0.1
echo "===== 系统版本 ====="
head -2 /etc/os-release
echo "===== 内核版本 ====="
uname -r
echo "===== CPU 负载 ====="
uptime
echo "===== 内存使用 ====="
free -h
echo "===== 磁盘使用 ====="
df -h /
echo "===== 采集时间 ====="
date
