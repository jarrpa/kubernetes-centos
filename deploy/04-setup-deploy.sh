#!/bin/bash

sed -e "s#<HEKETI_KUBE_NAMESPACE>#\"default\"#" \
    -e "s#<HEKETI_KUBE_SECRETNAME>#\"${heketi_secret}\"#" \
    -e "s#<HEKETI_KUBE_APIHOST>#\"${kubeapi}\"#" deploy-heketi-deployment.json | kubectl create -f -

