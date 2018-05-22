CONCOURSE_ENDPOINT=127.0.0.1
CONCOURSE_TARGET=local
PIPELINE_NAME=install-nsx-t

fly -t $CONCOURSE_TARGET destroy-pipeline -p $PIPELINE_NAME -n
fly -t $CONCOURSE_TARGET set-pipeline -p $PIPELINE_NAME -c ./nsx-t-gen/pipelines/nsx-t-install.yml -l ./nsx-t-gen/pipelines/nsx-t-params.yml
fly -t $CONCOURSE_TARGET containers | grep $PIPELINE_NAME
fly -t $CONCOURSE_TARGET hijack -b


fly -t local unpause-pipeline -p install-nsx-t

