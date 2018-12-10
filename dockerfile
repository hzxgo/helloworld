# 源镜像
FROM golang

# 作者
MAINTAINER Razil "hezhixiong"

# 设置工作目录
WORKDIR $GOPATH/src/helloworld

# 将服务器的go工程代码加入到docker容器中
ADD . $GOPATH/src/helloworld

# 构建可执行文件
RUN go build

# 暴露端口
EXPOSE 8089

# 最终运行docker的命令
ENTRYPOINT  ["./helloworld"]