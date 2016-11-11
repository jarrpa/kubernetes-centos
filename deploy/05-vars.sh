#!/bin/bash
export HEKETI_CLI_SERVER=$(kubectl describe svc/deploy-heketi | grep "Endpoints:" | awk '{print "http://"$2}')
