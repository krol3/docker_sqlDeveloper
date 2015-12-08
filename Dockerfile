#FROM krol/java-fedora:latest
FROM java:8

# Maintainer
# ----------
MAINTAINER Carol Guival <guillen.carolina@gmail.com>

# copy Package
ADD install /install

RUN unzip /install/sqlde* -d ../programs/
RUN chmod +x /programs/sqldeveloper/sqldeveloper.sh
#RUN sh /programs/sqldeveloper/sqldeveloper.sh

#clean
RUN rm -r /install/*
ENV DISPLAY :0

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

CMD /programs/sqldeveloper/sqldeveloper.sh
