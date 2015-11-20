#!/bin/sh

# we handle replacing root pass here, because otherwise a guest user will also be created
sed -i "s|ORIENTDB_ROOT_PASSWORD|${ORIENTDB_ROOT_PASSWORD}|" ${ORIENTDB_HOME}/config/orientdb-server-config.xml

${ORIENTDB_HOME}/bin/server.sh \
    -Xmx${HEAP_MEM_LIMIT} \
    -Dstorage.diskCache.bufferSize=${DISK_CACHE_BUFFER} \
    -Dnetwork.lockTimeout=${ODB_NETWORK_LOCKTIMEOUT} \
    -Dnetwork.socketTimeout=${ODB_NETWORK_SOCKETTIMEOUT} $*
