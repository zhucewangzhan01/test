FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
WORKDIR /root
RUN apt update \
&& apt install -y git python3 htop nano vim unzip sudo wget curl screen iputils-ping openssh-server chromium-browser firefox ssh ibus-pinyin
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 /usr/local/bin/ttyd
RUN chmod +x /usr/local/bin/ttyd
EXPOSE 7681
CMD ["ttyd", "bash"]
