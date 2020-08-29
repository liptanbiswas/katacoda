#!/bin/bash
set -e
KUBECONFIG=/root/.kube/config kubectl exec secure-pod -- id -u  | grep -q -w 1000
KUBECONFIG=/root/.kube/config kubectl exec secure-pod -- id -g  | grep -q -w 2000
echo "done"
