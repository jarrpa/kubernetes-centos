#!/bin/bash
watch -n1 "./kubedo get nodes; ./kubedo get all,deployments,secrets,jobs,events --all-namespaces --show-all"
