#!/bin/bash
set -e
KUBECONFIG=/root/.kube/config kubectl get ns | grep testns
echo "done"
