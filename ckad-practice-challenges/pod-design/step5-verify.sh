#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get nodes node01 -o jsonpath={'.metadata.labels.shuttle'} | grep -q -w "true"
if KUBECONFIG=/root/.kube/config kubectl get nodes node01 -o jsonpath={'.metadata.annotations'} | grep -q flagship; then exit 1; fi

echo "done"
