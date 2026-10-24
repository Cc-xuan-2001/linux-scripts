#!/bin/bash
# backup.sh —— 把指定目录打包备份（练习用）

# 1. 定义变量：要备份谁、备份到哪
SRC_DIR="$HOME/linux-scripts"     # 要备份的目录
BAK_DIR="$HOME/backup"            # 备份文件存放目录
FILE_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"   # 文件名自动带时间戳

# 2. 备份目录不存在就自动创建（-p：多级目录一并创建）
mkdir -p "$BAK_DIR"

# 3. 打包压缩
tar -czf "$BAK_DIR/$FILE_NAME" "$SRC_DIR"

# 4. 判断上一条命令是否成功（$? 是上一条的返回值，0 = 成功）
if [ $? -eq 0 ]; then
    echo "备份成功：$BAK_DIR/$FILE_NAME"
    ls -lh "$BAK_DIR"
else
    echo "备份失败，请检查目录路径是否正确"
    exit 1
fi
