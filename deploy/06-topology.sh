#!/bin/bash
heketi-cli topology load --json=topology.json
heketi-cli setup-openshift-heketi-storage
kubectl create -f heketi-storage.json
