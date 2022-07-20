# using the latest build of the official docker
# FROM tindy2013/subconverter:latest
# expose internal port
# EXPOSE 25500

FROM ubuntu

RUN apt-get update  && \
  apt install -y ca-certificates tzdata wget unzip tar sudo && \
  wget -O subconverter_linux64.tar.gz https://ghproxy.com/https://github.com/lsls01/oksubconver/releases/download/0.7.2/subconverter_linux64.tar.gz && \
  tar zxvf  subconverter_linux64.tar.gz && \
  cd subconverter && \
  ls
ENTRYPOINT ["/subconverter/subconverter","-d"]

