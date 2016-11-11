#!/bin/bash

for i in 0 1 2; do
  sed -e "s#<GLUSTERFS_NODE>#192.168.10.10${i}#" \
      -e "s#<NODE_NAME>#node${i}#" glusterfs-deployment.json | kubectl create -f -
done
