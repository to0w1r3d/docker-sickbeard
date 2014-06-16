README:

Sickbeard - (http://sickbeard.com/)

git clone git@github.com:to0w1r3d/docker-sickbeard.git 

cd docker-sickbeard 

docker build -t sickbeard .  

VOLUME /config

VOLUME /data

VOLUME /tv

docker run -d -h _hostname_ -v /_hostconfig_:/config -v /_hostdata_:/data -v /_hosttvlibrary_:/tv -p 8081:8081 sickbeard
