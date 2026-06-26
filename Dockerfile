FROM debian:latest
RUN apt update -y && apt upgrade -y; apt install util-linux-extra xfce4-terminal vim -y ;useradd -m vision
COPY --chown=root --chmod=555 init.sh /init.sh
#USER vision
COPY --chown=root --chmod=700 vision.tar.gz /home/vision/
WORKDIR /home/vision
RUN tar -xvf /home/vision/vision.tar.gz
ENTRYPOINT ["/init.sh"] 
