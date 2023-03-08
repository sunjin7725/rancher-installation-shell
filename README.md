# rancher installation shell
![rancher](rancher.png)
- This shell script can install rancher for kubernetes
- [More details here!](https://ranchermanager.docs.rancher.com/pages-for-subheaders/install-upgrade-on-a-kubernetes-cluster)

## Requirements
- kubernetes(k3s, minikube, or etc,. are also compatible)
- helm
- You can install `K3S` [here](https://github.com/sunjin7725/k3s-installation-shell)!
- You can install `Helm` [here](https://github.com/sunjin7725/helm-installation-shell)!

## Installation
```bash
RANCHER_VERSION=${COMPATIBLE_VERSION}
RANCHER_REPLICAS=${NUM_REPLICAS}
RANCHER_PASSWORD=${PASSWORD}
./rancher.sh
```
**Note**  
1) This installation shell has variables.
2) Available release `VERSION` is here. **[RANCHER release](https://github.com/rancher/rancher/tags)**
