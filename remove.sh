#!/usr/bin/env bash
kubectl config set-context $(kubectl config current-context) --namespace=brenntag-prd

helm del --purge checkmk-brenntag-prd

kubectl get pods