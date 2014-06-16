README:

Sickbeard - (http://sickbeard.com/)

____________

git clone git@github.com:to0w1r3d/docker-sickbeard.git 

cd docker-sickbeard 

docker build -t sickbeard .  

____________

VOLUME /config

VOLUME /data

VOLUME /tv

____________

docker run -d -h _hostname_ -v /_hostconfig_:/config -v /_hostdata_:/data -v /_hosttvlibrary_:/tv -p 8081:8081 sickbeard
