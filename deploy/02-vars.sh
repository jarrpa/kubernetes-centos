#!/bin/bash
export KUBECONFIG="/etc/kubernetes/admin.conf"
heketi_secret=$(kubectl get sa heketi-service-account -o="go-template" --template="{{(index .secrets 0).name}}")
context=$(kubectl config current-context)
cluster=$(kubectl config view -o jsonpath="{.contexts[?(@.name==\"$context\")].context.cluster}")
kubeapi=$(kubectl config view -o jsonpath="{.clusters[?(@.name==\"$cluster\")].cluster.server}")
