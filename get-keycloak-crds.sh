#!/bin/bash

mkdir keycloak-controller
curl -L https://github.com/kiwigrid/keycloak-controller/tarball/2.0.0 | tar xz -C keycloak-controller --strip-components=1
cd keycloak-controller/src/main/k8s
for filename in *.yaml; do mv "$filename" "0_crd_$filename"; done;
cd ../../../../
mv keycloak-controller/src/main/k8s/*.yaml env/templates