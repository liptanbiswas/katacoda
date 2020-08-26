#!/bin/bash
set -e
KUBECONFIG=/root/.kube/config kubectl get po -n frontend -o jsonpath="{.items[*].metadata.name}" | grep -q -w nginx
KUBECONFIG=/root/.kube/config kubectl get po nginx -n frontend -o jsonpath="{.spec.containers[*].image}" | grep -q -w nginx
echo "done"
