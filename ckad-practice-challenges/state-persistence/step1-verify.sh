#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get pod vader -o jsonpath='{.spec.containers[0].image}' | grep -q -w "nginx"

KUBECONFIG=/root/.kube/config kubectl get pod vader -o jsonpath='{.spec.containers[0].volumeMounts[?(@.name=="vader-vol")].mountPath}' | grep -q -w "/var/www/html"

echo "done"
