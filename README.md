README:

Sickbeard - (http://sickbeard.com/)

git clone git@github.com:to0w1r3d/docker-sickbeard.git 

cd docker-sickbeard 

docker build -t sickbeard .  

VOLUME /config

VOLUME /data

VOLUME /tv

VOLUME /share

docker run -d -h your_host_name -v /your_config_location:/config -v /your_videos_location:/data -p 8081:8081 sickbeard
