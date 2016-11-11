#!/bin/bash
export HEKETI_CLI_SERVER=$(kubectl describe svc/heketi | grep "Endpoints:" | awk '{print "http://"$2}')
