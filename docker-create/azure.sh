#!/bin/bash

export FILE_PATH=./config/environment.sh
. ${FILE_PATH}

export AZURE_RESOURCE_NAME=`date +%Y%m%d%H%M`

/usr/local/bin/docker-machine create -d azure \
 --azure-subscription-id="${AZURE_SUBSCRIPTION_ID}" \
 --azure-subscription-cert="${AZURE_SUBSCRIPTION_CERT}" \
 --azure-location "${AZURE_LOCATION}" \
 ecosys${AZURE_RESOURCE_NAME}
