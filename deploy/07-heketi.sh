#!/bin/bash
kubectl delete all,service,jobs,deployment,secret --selector="deploy-heketi"
sed -e "s#<HEKETI_KUBE_SECRETNAME>#\"$heketi_secret\"#" \
    -e "s#<HEKETI_KUBE_APIHOST>#\"$kubeapi\"#" heketi-deployment.json | kubectl create -f -
