#!/bin/bash

# straight from
#https://spark.apache.org/docs/latest/running-on-kubernetes.html#client-mode
gcloud container clusters get-credentials test-cluster --zone europe-west4-a --project dcc-manufacturing-dev-ejp
kubectl create serviceaccount spark
kubectl create clusterrolebinding spark-role --clusterrole=edit --serviceaccount=default:spark
