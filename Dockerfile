FROM krol/java-fedora:latest

# Maintainer
# ----------
MAINTAINER Carol Guival <guillen.carolina@gmail.com>

# copy Package
ADD install /install

RUN unzip /install/sqlde* -d ../programs/
RUN chmod +x /programs/sqldeveloper/sqldeveloper.sh

#clean
RUN rm -r /install/*

RUN useradd -s /bin/false oracle

RUN export uid=oracle gid=oracle && \
    mkdir -p /home/oracle && \
    echo "oracle:x:${uid}:${gid}:Developer,,,:/home/oracle:/bin/bash" >> /etc/passwd && \
    echo "oracle:x:${uid}:" >> /etc/group && \
    echo "oracle ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/oracle && \
    chmod 0440 /etc/sudoers.d/oracle && \
    chown ${uid}:${gid} -R /home/oracle

USER oracle
ENV HOME /home/oracle