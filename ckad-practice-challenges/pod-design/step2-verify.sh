#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl rollout status deploy yavin --timeout=1s
KUBECONFIG=/root/.kube/config kubectl apply -f /root/yavin.json --dry-run=client -o jsonpath='{.status.containerStatuses[0].ready}' | grep -q -w "true"
echo "done"
