#!/bin/bash

set -e
KUBECONFIG=/root/.kube/config kubectl exec mydb -- printenv | grep -q -w XoXoPassword
KUBECONFIG=/root/.kube/config kubectl exec mydb -- printenv | grep -q -w YoYoSecret
KUBECONFIG=/root/.kube/config kubectl exec mydb -- printenv | grep -q -w newdb
KUBECONFIG=/root/.kube/config kubectl exec mydb -- printenv | grep -q -w k8s
echo "done"
