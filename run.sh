#!/bin/bash
until nc -z localhost 8096; do
    echo "waiting for port 8096..."
    sleep 2
done

python /opt/cloudstack/tools/marvin/marvin/deployDataCenter.py -i /opt/zones.cfg
