# OrientDB dockerised
This runs the very latest OrientDB based on trusted Java images directly from library. If you want to have a clusterized setup on Amazon ECS, lookup the other image "ecs-orientdb".

`ORIENTDB_ROOT_PASSWORD` ENV variable may be set while running image for first time to setup the root pass. 

Ports `2480` and `2424` should be mapped to allow outside REST or binary connections.
