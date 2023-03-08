helm repo add rancher-stable https://releases.rancher.com/server-charts/stable

helm repo update

BASE_COMMAND="helm install rancher rancher-stable/rancher --namespace cattle-system --create-namespace"

if [ $RANCHER_VERSION != '' ]; then
    BASE_COMMAND+=" --version ${RANCHER_VERSION}"
fi

if [ $RANCHER_REPLICAS != '' ]; then
    BASE_COMMAND+=" --replicas=${RANCHER_REPLICAS}"
fi

if [ $RANCHER_PASSWORD != '' ]; then
    BASE_COMMAND+=" --bootstrapPassword ${RANCHER_PASSWORD}"
fi

bash -c ${BASE_COMMAND}