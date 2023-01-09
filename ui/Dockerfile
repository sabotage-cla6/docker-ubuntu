FROM sabotagecla6/ubuntu:20.04

# ***********************************************
# install wine
# ***********************************************
RUN apt-get update && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
        zenity x11-apps \
        pulseaudio

# ***********************************************
# setting skelton
# ***********************************************
RUN mkdir -p /etc/skel/Desktop \
    /etc/skel/Downloads \
    /etc/skel/Templates \
    /etc/skel/Public \
    /etc/skel/Documents \
    /etc/skel/Music \
    /etc/skel/Pictures \
    /etc/skel/Videos

RUN cp /root/.bashrc /etc/skel/.bashrc && cp /root/.profile /etc/skel/.profile


# ***********************************************
# setting for create user
# ***********************************************
RUN echo "ALL ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/ALL
RUN chmod u+s /usr/sbin/useradd && chmod u+s /usr/sbin/groupadd

ENV DEFAULT_USER=ubuntu \
    DEFAULT_PASSWD=ubuntu

COPY endpoint.sh /opt/
COPY initilize.sh /opt/
RUN chmod +xs /opt/endpoint.sh
RUN chmod +wxs /opt/initilize.sh
RUN chmod +xs /etc/sudoers.d/ALL


RUN chmod u+s /opt/endpoint.sh

