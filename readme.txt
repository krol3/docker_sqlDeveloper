#Build a docker file
docker build -t sciensa2/sqldeveloper .
docker build -t krol/sqldeveloper .

#run docker file
docker run -it --rm=true -p 1521:1521 -p 8080:8080 sciensa2/oracle-db11g /bin/bash 
