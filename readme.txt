#Build a docker file
docker build -t sciensa2/sqldeveloper .
docker build -t krol/sqldeveloper .

#run docker file
docker run -it --rm=true krol/sqldeveloper /bin/bash

sudo xhost +
/usr/lib/jvm/java-8-openjdk-amd64/
docker run -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix krol/sqldeveloper
