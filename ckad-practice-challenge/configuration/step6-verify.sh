#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get sa | grep -q -w "namaste"
KUBECONFIG=/root/.kube/config kubectl get po yo-namaste -o jsonpath='{.spec.serviceAccountName}'  | grep -q -w "namaste"
echo "done"
