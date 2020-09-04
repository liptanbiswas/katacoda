#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po httptest -o jsonpath='{.spec.containers[*].readinessProbe.httpGet.path}' | grep -q -w "/status/200"
KUBECONFIG=/root/.kube/config kubectl get po httptest -o jsonpath='{.status.containerStatuses[0].ready}' | grep -q -w "true"
echo "done"
