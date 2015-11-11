# orientdb
FROM java:8
MAINTAINER Mohammad Naghavi <mohamnag@gmail.com>

# install orientdb
ENV ORIENTDB_VERSION='2.1.5'
ENV ORIENTDB_URL http://www.orientechnologies.com/download.php?email=unknown@unknown.com&file=orientdb-community-${ORIENTDB_VERSION}.tar.gz&os=linux
ENV ORIENTDB_ROOT_PASSWORD changeme
ENV ORIENTDB_HOME='/opt/orientdb'

ADD ${ORIENTDB_URL} /tmp/orientdb.tar.gz

RUN mkdir -p ${ORIENTDB_HOME} \ 
    && tar -zxvf /tmp/orientdb.tar.gz --strip-components=1 --directory ${ORIENTDB_HOME} \
    && ln -s ${ORIENTDB_HOME}/bin/* /usr/local/bin/ \
    && rm -rf /tmp/ \
    && mkdir /usr/local/log

WORKDIR ${ORIENTDB_HOME}

VOLUME ${ORIENTDB_HOME}/databases/

# configure system
EXPOSE 2424
EXPOSE 2480

CMD ["/usr/local/bin/server.sh"]
