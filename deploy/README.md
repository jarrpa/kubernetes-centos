# Heketi Deployment
This is a collection of scripts and config files to deploy heketi on Kubernetes running on the CentOS 7 cluster.

To deploy heketi, copy this directory to the master node of the cluster and do the following:

```bash
# export KUBECONFIG="/etc/kubernetes/admin.conf"
# ./heketi-deploy
```

heketi should not be installed and ready to go. For ease of testing, we recommend the following:

```
# export HEKETI_CLI_SERVER=$(kubectl describe svc/heketi | grep "Endpoints:" | awk '{print "http://"$2}')
```

You should now be able to use `heketi-cli` to create volumes and then mount those volumes to verify they're working.
