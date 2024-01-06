	FROM ubuntu:latest

WORKDIR /app
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/cloudreve/Cloudreve/releases/download/3.8.2/cloudreve_3.8.2_linux_amd64.tar.gz

#解压获取到的主程序
RUN tar -zxvf cloudreve_3.8.2_linux_amd64.tar.gz

# 赋予执行权限
# RUN chmod +x ./cloudreve
RUN chmod 777 ./
EXPOSE 8080
# 启动 Cloudreve
CMD ./cloudreve
