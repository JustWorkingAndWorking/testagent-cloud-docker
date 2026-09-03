# 如何构建 TSCode 镜像

1. 在根目录下放置名为 `vscode-server-linux-x64.tar.gz` 的 TSCode 服务端压缩包

2. (可选) 在根目录下直接放置额外需要打包的 `vsix` 插件

3. 运行如下命令进行构建

```shell
docker build -t testagent/testagent-cloud-docker:1.4.2 .
```

4. 运行如下命令导出镜像

```shell
docker save -o testagent-cloud-docker.tar testagent/testagent-cloud-docker:1.4.2
$in="testagent-cloud-docker.tar"; $out="$in.gz"; $src=[IO.File]::OpenRead($in); $dst=[IO.File]::Create($out); $gz=[IO.Compression.GZipStream]::new($dst,[IO.Compression.CompressionMode]::Compress); $src.CopyTo($gz); $gz.Dispose(); $dst.Dispose(); $src.Dispose()
```
