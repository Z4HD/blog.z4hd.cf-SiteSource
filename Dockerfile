# Dockerfile
# Source: https://blog.nfz.moe/archives/hexo-auto-deploy-with-daocloud.html
FROM node:slim
MAINTAINER Z4HD <Z4HD@outlook.com>

# 安装 git、ssh 等基本工具
RUN apt update &&\ 
    apt -y upgrade &&\
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash &&\
    apt -y install git git-lfs ssh-client ca-certificates &&\
    git lfs install &&\
    apt-get clean

# 设置时区，不知道为什么？
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
# 只安装 Hexo 命令行工具，其他依赖项根据项目 package.json 在持续集成过程中安装
RUN npm install hexo-cli -g
EXPOSE 4000