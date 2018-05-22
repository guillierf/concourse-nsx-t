read -p "Are you sure to apply the new github code (Y/N) ?" response
if [ $response == "Y" ]; then

 fly -t local destroy-pipeline -p install-nsx-t -n

 rm -r ./nsx-t-gen

 git clone https://github.com/sparameswaran/nsx-t-gen.git

 cp ./SVG/nsx-t-gen/pipelines/nsx-t-params.yml ./nsx-t-gen/pipelines/nsx-t-params.yml

fi
