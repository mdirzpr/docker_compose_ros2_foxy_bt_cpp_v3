#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

docker stop ros2_foxy_bt_v3
docker container prune -f
docker image rm ros2_foxy_bt_v3
docker rmi $(docker images -f dangling=true -q)
