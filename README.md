# OrientDB dockerised
This image runs OrientDB on trusted Java images directly from library. If you want to have 
a clusterized setup on Amazon ECS, take a look at [other image](https://github.com/mohamnag/ecs-orientdb).

## Versions
Currently following versions provided:
 - image tagged `2.0.15` runs OrientDB v2.0.15
 - image tagged `2.1.5` runs OrientDB v2.1.5

## Variables
Following environemnt variables shall be set for best result when you run the container:

`ORIENTDB_ROOT_PASSWORD` variable may be set while running image for first time to setup the root pass.

`HEAP_MEM_LIMIT` and `DISK_CACHE_BUFFER` for tuning the memmory expectancy. Better documentation on 
these can be found [here](https://github.com/mohamnag/ecs-orientdb).

`ODB_NETWORK_LOCKTIMEOUT` and `ODB_NETWORK_SOCKETTIMEOUT` control the timeout over network and are very 
useful if you get lots of network timeout. again look at docs [here](https://github.com/mohamnag/ecs-orientdb).

## Ports
Ports `2480` and `2424` should be mapped to allow outside REST or binary connections.
