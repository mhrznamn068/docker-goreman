FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
    bash zip unzip redis-server nginx

ADD https://github.com/mattn/goreman/releases/download/v0.0.10/goreman_linux_amd64.zip /tmp/goreman.zip
RUN cd /bin && unzip /tmp/goreman.zip && chmod +x /bin/goreman && rm /tmp/goreman.zip

ADD Procfile /root/Procfile

ENTRYPOINT [ "goreman" ]
CMD [ "-f", "/root/Procfile", "start" ]