# Heketi Deployment
This is a collection of scripts and config files to deploy heketi on Kubernetes running on the CentOS 7 cluster.

To deploy heketi, do the following:

```bash
# ./01-setup-account.sh
# source 02-vars.sh
# ./03-setup-gluster.sh
# ./watch.sh # Wait for pod creation to complete
# ./04-setup-deploy
# ./watch.sh # Wait for pod creation to complete
# source 05-vars.sh
# ./06-topology.sh
# ./watch.sh # Wait for job to complete
# ./07-heketi.sh
# ./watch.sh # Wait for pod creation to complete
# source 08-vars.sh
```
You should now be able to juse `heketi-cli` to create volumes and then mount those volumes to verify they're working.
