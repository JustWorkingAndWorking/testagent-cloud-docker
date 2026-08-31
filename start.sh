#!/bin/bash

set -e

# 容器 SSH 指纹生成
# 不同容器的指纹不一致
mkdir -p /run/sshd
ssh-keygen -A

# --- Start ---

echo  "环境变量测试"
printenv | grep '^TESTAGENT'

# --- End ---

# 启动 SSH 服务
if [ "$#" -eq 0 ]; then
    set -- /usr/sbin/sshd -D -e
fi

exec "$@"
