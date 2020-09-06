#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl apply -f /root/limited-pod.yaml --dry-run=client -ojsonpath='{.spec.containers[0].resources.requests.memory}' | grep -q 100
KUBECONFIG=/root/.kube/config kubectl apply -f /root/limited-pod.yaml --dry-run=client -ojsonpath='{.spec.containers[0].resources.limits.memory}' | grep -q 200
echo "done"
