#!/usr/bin/env bash
kubectl config set-context $(kubectl config current-context) --namespace=brenntag-prd


helm upgrade checkmk-brenntag-prd \
    ../../charts/csi/0.1.0 \
    --install \
    --version 0.1.0 \
    --namespace brenntag-prd \
    -f values.yaml \
    --dry-run

helm upgrade checkmk-brenntag-prd \
    ../../charts/csi/0.1.0 \
    --install \
    --version 0.1.0 \
    --namespace brenntag-prd \
    -f values.yaml

kubectl get pods