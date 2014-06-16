FROM ubuntu:trusty
MAINTAINER to0w1r3d <to0w1r3d@gmail.com>
# Original: Tim Haak - https://hub.docker.com/u/timhaak/

RUN locale-gen en_US en_US.UTF-8

RUN apt-get -q update
RUN apt-mark hold initscripts udev plymouth mountall
RUN apt-get -qy --force-yes dist-upgrade

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty universe multiverse" >> /etc/apt/sources.list
RUN apt-get -q update

RUN apt-get install -qy --force-yes python-cheetah
RUN apt-get install -qy --force-yes wget tar ca-certificates curl
RUN curl -L  -O https://github.com/midgetspy/Sick-Beard/tarball/master
RUN tar -xvf master -C /  && mv /midgetspy-Sick-Beard-* /sickbeard/ 

VOLUME /config
VOLUME /data
VOLUME /tv
VOLUME /share

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8081

ENTRYPOINT ["/start.sh"]
