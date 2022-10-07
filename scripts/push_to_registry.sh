#!/bin/bash
docker tag kedro-vertex-spark europe-west4-docker.pkg.dev/dcc-manufacturing-dev-ejp/spark-k8s/kedro-vertex-spark
docker push europe-west4-docker.pkg.dev/dcc-manufacturing-dev-ejp/spark-k8s/kedro-vertex-spark