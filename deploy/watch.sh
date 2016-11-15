#!/bin/bash
watch -n1 "kubectl get nodes; kubectl get sa,all,deployments,secrets,jobs,events --all-namespaces --show-all"
