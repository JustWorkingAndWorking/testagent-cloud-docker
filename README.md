# 如何构建 TSCode 镜像

1. 在根目录下放置名为 `vscode-server-linux-x64.tar.gz` 的 TSCode 服务端压缩包

2. 运行如下命令进行构建

```shell
docker build -t testagent/testagent-cloud-docker:1.4.2 .
```
