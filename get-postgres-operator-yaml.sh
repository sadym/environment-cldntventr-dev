#!/bin/bash

git clone https://github.com/zalando/postgres-operator.git
cd postgres-operator

cp manifests/configmap.yaml ../env/templates/0_pgo_configmap.yaml
cp manifests/operator-service-account-rbac.yaml ../env/templates/1_pgo_operator-service-account-rbac.yaml
cp manifests/postgres-operator.yaml ../env/templates/2_pgo_postgres-operator.yaml
cp manifests/api-service.yaml ../env/templates/3_pgo_api-service.yaml
